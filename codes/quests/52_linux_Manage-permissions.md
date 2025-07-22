1. 기본 권한 설정
1-1. 개발팀 파일 권한 설정
개발팀(developers 그룹) 관련 파일들의 권한을 다음과 같이 설정하세요:
company/departments/dev/ 디렉터리: 개발팀만 접근 가능, 소유자와 그룹은 읽기/쓰기/실행 가능
company/departments/dev/main.py: 개발팀은 읽기/쓰기, 기타는 읽기만 가능
company/departments/dev/build.sh: 개발팀만 실행 가능
명령어를 작성하세요:
# 1-1 답안 작성란
```shell
[root@localhost permission_practice]# chown .developers ./company/departments/dev/
[root@localhost permission_practice]# chmod 770 ./company/departments/dev/
[root@localhost permission_practice]# chown alice ./company/departments/dev/


'''




1-2. 개인 디렉터리 보안 설정
각 사용자의 개인 디렉터리와 파일을 다음과 같이 설정하세요:
private/alice/ 디렉터리: alice만 접근 가능
private/alice/personal.txt: alice만 읽기/쓰기 가능
private/bob/config.json: bob만 읽기/쓰기 가능
명령어를 작성하세요:
# 1-2 답안 작성란
```shell
[root@localhost permission_practice]# chown alice.alice private/alice/personal.txt
[root@localhost permission_practice]# chmod 660 private/alice/personal.txt
[root@localhost permission_practice]# chown bbb.bbb private/bob/config.json
chown: invalid user: ‘bbb.bbb’
[root@localhost permission_practice]# chown bob.bob private/bob/config.json
[root@localhost permission_practice]# ls -l ./private/bob/
total 0
-rw-r--r--. 1 root root 0 Jul 21 16:49 archive.zip
-rw-r--r--. 1 bob  bob  0 Jul 21 16:49 config.json
-rw-r--r--. 1 root root 0 Jul 21 16:49 notes.md
[root@localhost permission_practice]# chmod 660 private/bob/config.json


```





2. 그룹 기반 권한 관리
2-1. 공유 리소스 접근 권한
shared/ 디렉터리의 권한을 다음과 같이 설정하세요:
shared/documents/: developers와 managers 그룹 모두 읽기 가능, 소유자만 쓰기 가능
shared/resources/: developers 그룹만 접근 가능
shared/tools/: 모든 사용자가 읽기 가능, developers 그룹만 실행 가능
명령어를 작성하세요:
# 2-1 답안 작성란

```shell
[root@localhost permission_practice]# useradd -m -G managers shin 
[root@localhost permission_practice]# useradd -m -G managers,developers shin 
useradd: user 'shin' already exists
[root@localhost permission_practice]# useradd -m -G managers,developers sing 
[root@localhost permission_practice]# chown sing,managers ./shared/documents/
chown: invalid user: ‘sing,managers’
[root@localhost permission_practice]# chown sing.managers ./shared/documents/
[root@localhost permission_practice]# chown bob.developers shared/resources/
[root@localhost permission_practice]# chown .developers shared/tools/
[root@localhost permission_practice]# chmod 454 shared/tools/


```



2-2. 프로젝트별 협업 권한
프로젝트 디렉터리의 권한을 다음과 같이 설정하세요:
company/projects/project_a/: developers 그룹 구성원들이 협업할 수 있도록 설정
company/projects/project_b/: alice와 bob만 접근 가능하도록 설정
명령어를 작성하세요:
# 2-2 답안 작성란

```shell

[root@localhost permission_practice]# chown bob.developers company/projects/project_a/
[root@localhost permission_practice]# chmod 770 company/projects/project_a/
[root@localhost permission_practice]# groupadd 22
groupadd: '22' is not a valid group name
[root@localhost permission_practice]# groupadd group22
[root@localhost permission_practice]# usermod -a -G group22 alice
[root@localhost permission_practice]# usermod -a -G group22 bob
[root@localhost permission_practice]# chown alice.group22 company/projects/project_b/
[root@localhost permission_practice]# chmod 770 company/projects/project_b/

```




3. 고급 권한 설정
3-1. 특수 권한 적용
다음 파일들에 특수 권한을 설정하세요:
shared/tools/deploy.sh: SetGID 설정으로 developers 그룹 권한으로 실행
backup/ 디렉터리: Sticky Bit 설정으로 파일 소유자만 삭제 가능
company/departments/hr/salaries.txt: SetUID 설정 (실제 환경에서는 권장하지 않지만 실습용)
명령어를 작성하세요:
# 3-1 답안 작성란
```shell

[root@localhost permission_practice]# ls -l shared/tools/deploy.sh
-rw-r--r--. 1 root root 37 Jul 21 16:49 shared/tools/deploy.sh
[root@localhost permission_practice]# chmod g+s shared/tools/deploy.sh
[root@localhost permission_practice]# chmod o+t backup/
[root@localhost permission_practice]# chmod u+s company/departments/hr/salaries.txt

```




3-2. 숫자 표기법으로 복합 권한 설정
다음 파일들의 권한을 숫자 표기법으로 설정하세요:
company/departments/finance/budget.xlsx: 소유자(rw-), 그룹(r--), 기타(---)
shared/documents/manual.pdf: 소유자(rw-), 그룹(r--), 기타(r--)
logs/2024/06/system.log: 소유자(rw-), 그룹(r--), 기타(---)
명령어를 작성하세요:
# 3-2 답안 작성란

```shell
[root@localhost permission_practice]# chmod 640 company/departments/finance/budget.xlsx
[root@localhost permission_practice]# chmod 644 shared/documents/manual.pdf
[root@localhost permission_practice]# chmod 640 logs/2024/06/system.log



```




4. 소유권 및 그룹 관리
4-1. 소유권 변경
다음과 같이 파일과 디렉터리의 소유권을 변경하세요:
company/departments/dev/ 디렉터리와 모든 하위 파일: alice 소유, developers 그룹
company/departments/hr/ 디렉터리와 모든 하위 파일: diana 소유, managers 그룹
shared/tools/ 디렉터리와 모든 하위 파일: root 소유, developers 그룹
명령어를 작성하세요:
# 4-1 답안 작성란

```shell

[root@localhost permission_practice]# chown alice.developers company/departments/dev/
[root@localhost permission_practice]# chown diana.managers company/departments/hr/
[root@localhost permission_practice]# chown root,developers shared/tools/
chown: invalid user: ‘root,developers’
[root@localhost permission_practice]# chown root.developers shared/tools/
```



4-2. 그룹 전용 변경
다음 디렉터리들의 그룹만 변경하세요:
company/projects/: managers 그룹으로 변경
backup/daily/: developers 그룹으로 변경
명령어를 작성하세요:
# 4-2 답안 작성란
```shell

[root@localhost permission_practice]# chown .managers company/projects/
[root@localhost permission_practice]# chown .developers backup/daily/

```





5. 실전 시나리오 해결
5-1. 보안 감사 및 수정
다음 보안 문제들을 찾아서 수정하세요:
777 권한으로 설정된 파일이나 디렉터리를 찾아 적절한 권한으로 변경
다른 사용자가 읽을 수 있는 민감한 파일들의 권한 수정
실행 권한이 없어야 할 데이터 파일에서 실행 권한 제거
명령어를 작성하세요:
# 5-1 답안 작성란 (보안 감사 명령어)




# 5-1 답안 작성란 (수정 명령어)






6. umask 및 기본 권한 관리
6-1. umask 설정 및 테스트
현재 시스템의 umask 값을 확인하고 다음과 같이 변경한 후 테스트하세요:
umask 값을 027로 설정
새 파일과 디렉터리를 생성하여 기본 권한 확인
원래 umask 값으로 복원
명령어를 작성하세요:
# 6-1 답안 작성란
```shell
[root@localhost permission_practice]# umask 027
[root@localhost permission_practice]# touch test1 && mkdir -p ./test11 && ls -l
total 0
drwxr-xr-t. 5 root root 48 Jul 21 16:49 backup
drwxr-xr-x. 4 root root 41 Jul 21 16:49 company
drwxr-xr-x. 4 root root 30 Jul 21 16:49 logs
drwxr-xr-x. 7 root root 69 Jul 21 16:49 private
drwxr-xr-x. 5 root root 53 Jul 21 16:49 shared
-rw-r-----. 1 root root  0 Jul 21 17:56 test1
drwxr-x---. 2 root root  6 Jul 21 17:56 test11
[root@localhost permission_practice]# umask 0022


```




6-2. 사용자별 umask 커스터마이징
각 사용자별로 다른 umask 값을 설정하세요:
alice: umask 022 (일반적인 개발자 설정)
diana: umask 077 (보안 강화 설정)
eve: umask 002 (그룹 협업 친화적 설정)
명령어를 작성하세요:
# 6-2 답안 작성란






8. 실행 권한 및 스크립트 관리
8-1. 스크립트 실행 환경 설정
다음 스크립트 파일들의 실행 권한을 적절히 설정하세요:
shared/tools/deploy.sh: developers 그룹만 실행 가능
shared/tools/backup.sh: alice와 diana만 실행 가능 (ACL 사용)
company/departments/dev/build.sh: 소유자만 실행 가능
명령어를 작성하세요:
# 8-1 답안 작성란

```shell

[root@localhost permission_practice]# chown .developers shared/tools/deploy.sh
[root@localhost permission_practice]# ls -l ./ shared/tools/deploy.sh
-rw-r-Sr--. 1 root developers  37 Jul 21 16:49 shared/tools/deploy.sh

./:
total 0
drwxr-xr-t. 5 root root 48 Jul 21 16:49 backup
drwxr-xr-x. 4 root root 41 Jul 21 16:49 company
drwxr-xr-x. 4 root root 30 Jul 21 16:49 logs
drwxr-xr-x. 7 root root 69 Jul 21 16:49 private
drwxr-xr-x. 5 root root 53 Jul 21 16:49 shared
-rw-r-----. 1 root root  0 Jul 21 17:56 test1
drwxr-x---. 2 root root  6 Jul 21 17:56 test11
[root@localhost permission_practice]# chmod 654 shared/tools/deploy.sh
[root@localhost permission_practice]# ls -l ./company/departments/dev/build.sh
-rw-r--r--. 1 root root 32 Jul 21 16:49 ./company/departments/dev/build.sh
[root@localhost permission_practice]# chmod u+x company/departments/dev/build.sh
```



8-2. 시스템 스크립트 보안 설정
시스템 관리용 스크립트를 다음과 같이 설정하세요:
root 소유의 시스템 관리 스크립트 생성 (system_check.sh)
일반 사용자가 sudo 없이 실행할 수 있도록 SetUID 설정
실행 로그를 남기도록 권한 설정
명령어를 작성하세요:
# 8-2 답안 작성란

```shell

[root@localhost permission_practice]# touch system_check.sh
[root@localhost permission_practice]# chmod u+s system_check.sh
[root@localhost permission_practice]# chmod o+w system_check.sh

```




9. 디렉터리별 접근 제어
9-1. 계층적 접근 제어
다음과 같은 계층적 접근 권한을 설정하세요:
company/ : 모든 직원이 읽기 가능
company/departments/ : 각 부서원만 해당 부서 디렉터리 접근 가능
company/departments/finance/ : managers 그룹만 접근 가능
company/projects/ : 프로젝트 참여자만 해당 프로젝트 접근 가능
명령어를 작성하세요:
# 9-1 답안 작성란
```shell
[root@localhost permission_practice]# ls -l company/
total 0
drwxr-xr-x. 6 root root     59 Jul 21 16:49 departments
drwxr-xr-x. 5 root managers 57 Jul 21 16:49 projects
[root@localhost permission_practice]# ls -l company
total 0
drwxr-xr-x. 6 root root     59 Jul 21 16:49 departments
drwxr-xr-x. 5 root managers 57 Jul 21 16:49 projects
[root@localhost permission_practice]# ls -l
total 0
drwxr-xr-t. 5 root root 48 Jul 21 16:49 backup
drwxr-xr-x. 4 root root 41 Jul 21 16:49 company
drwxr-xr-x. 4 root root 30 Jul 21 16:49 logs
drwxr-xr-x. 7 root root 69 Jul 21 16:49 private
drwxr-xr-x. 5 root root 53 Jul 21 16:49 shared
-rwSr--rw-. 1 root root  0 Jul 21 18:03 system_check.sh
-rw-r-----. 1 root root  0 Jul 21 17:56 test1
drwxr-x---. 2 root root  6 Jul 21 17:56 test11
[root@localhost permission_practice]# ls -l company/departments/
total 0
drwxrwx---. 2 alice developers 123 Jul 21 16:49 dev
drwxr-xr-x. 2 root  root        64 Jul 21 16:49 finance
drwxr-xr-x. 2 diana managers    89 Jul 21 16:49 hr
drwxr-xr-x. 2 root  root         6 Jul 21 16:49 marketing
[root@localhost permission_practice]# ls -l company
total 0
drwxr-xr-x. 6 root root     59 Jul 21 16:49 departments
drwxr-xr-x. 5 root managers 57 Jul 21 16:49 projects
[root@localhost permission_practice]# chown .managers company/departments/finance/
[root@localhost permission_practice]# ls -l company/departments/finance/
total 0
-rw-r-----. 1 root root 0 Jul 21 16:49 budget.xlsx
-rw-r--r--. 1 root root 0 Jul 21 16:49 invoices.csv
-rw-r--r--. 1 root root 0 Jul 21 16:49 reports.pdf
[root@localhost permission_practice]# ls -l company/departments
total 0
drwxrwx---. 2 alice developers 123 Jul 21 16:49 dev
drwxr-xr-x. 2 root  managers    64 Jul 21 16:49 finance
drwxr-xr-x. 2 diana managers    89 Jul 21 16:49 hr
drwxr-xr-x. 2 root  root         6 Jul 21 16:49 marketing
[root@localhost permission_practice]# groupadd hahaha
[root@localhost permission_practice]# usermod -a -G hahaha alice
[root@localhost permission_practice]# usermod -a -G hahaha bob
[root@localhost permission_practice]# usermod -a -G hahaha charlie
[root@localhost permission_practice]# usermod -a -G hahaha diana
[root@localhost permission_practice]# usermod -a -G hahaha eve
[root@localhost permission_practice]# chown .hahaha company/departments/
[root@localhost permission_practice]# chown .developers company/projects/


```




9-2. 임시 작업 공간 설정
임시 작업을 위한 공간을 다음과 같이 설정하세요:
temp/ 디렉터리 생성 (모든 사용자가 파일 생성 가능)
Sticky Bit 설정으로 자신의 파일만 삭제 가능
1주일 후 자동 삭제되도록 권한 설정 (cron 작업용)
명령어를 작성하세요:
# 9-2 답안 작성란


```shell

[root@localhost permission_practice]# mkdir temp/
[root@localhost permission_practice]# chmod o+t temp/

```



10. 백업 및 아카이브 권한 관리
10-1. 백업 파일 보안
백업 관련 파일들의 보안을 다음과 같이 설정하세요:
backup/daily/ : developers 그룹이 백업 생성 가능, 읽기 전용
backup/weekly/ : managers만 접근 가능
backup/monthly/ : root만 접근 가능
모든 백업 파일은 생성 후 읽기 전용으로 자동 변경
명령어를 작성하세요:
# 10-1 답안 작성란
```shell
[root@localhost permission_practice]# chown .developers backup/daily/
[root@localhost permission_practice]# chmod 474 backup/daily/
[root@localhost permission_practice]# chown .managers backup/weekly/
[root@localhost permission_practice]# ls -l backup/
total 0
dr--rwxr--. 2 root developers 60 Jul 21 16:49 daily
drwxr-xr-x. 2 root root        6 Jul 21 16:49 monthly
drwxr-xr-x. 2 root managers    6 Jul 21 16:49 weekly
[root@localhost permission_practice]# chmod 454 backup/monthly/
[root@localhost permission_practice]# chmod 444 backup/{daily,weekly,monthly}/



```