``` shell
PS C:\Develops\temp_dir> mkdir dir_first


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:22                dir_first


PS C:\Develops\temp_dir> cat file_first.txt
cat : 'C:\Develops\temp_dir\file_first.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cat file_first.txt
+ ~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\temp_dir\file_first.txt:String) [Get-Content], ItemNotFound
   Exception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetContentCommand

PS C:\Develops\temp_dir> ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:22                dir_first
-a----      2025-07-15   오후 2:24              0 file_first.txt


PS C:\Develops\temp_dir> rmdir dir_first
PS C:\Develops\temp_dir> ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 2:24              0 file_first.txt


PS C:\Develops\temp_dir> rm -rf file_first.txt
Remove-Item : 매개 변수 이름 'rf'과(와) 일치하는 매개 변수를 찾을 수 없습니다.
위치 줄:1 문자:4
+ rm -rf file_first.txt
+    ~~~
    + CategoryInfo          : InvalidArgument: (:) [Remove-Item], ParameterBindingException
    + FullyQualifiedErrorId : NamedParameterNotFound,Microsoft.PowerShell.Commands.RemoveItemCommand

PS C:\Develops\temp_dir> mkdir dir_first


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:38                dir_first


PS C:\Develops\temp_dir> rm file_first.txt
PS C:\Develops\temp_dir> ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 2:38                dir_first


PS C:\Develops\temp_dir> mv C:\Develops\dir_first C:\Develops\temp_dir\
PS C:\Develops\temp_dir> mv dir_first C:\Develops\
PS C:\Develops\temp_dir> mv C:\Develops\Downloads C:\Develops\temp_dir\
PS C:\Develops\temp_dir> mv C:\Develops\VM C:\Develops\temp_dir\
PS C:\Develops\temp_dir> mv C:\Develops\dir_first C:\Develops\temp_dir\
PS C:\Develops\temp_dir> tree -L 2
매개 변수가 너무 많습니다 - 2
PS C:\Develops\temp_dir> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─dir_first
├─Downloads
└─VM
    └─VM Rocky Linux 9.6.vmx.lck
PS C:\Develops\temp_dir> mv C:\Develops\temp_dir\dir_first C:\Develops\
PS C:\Develops\temp_dir> "hello"
hello
PS C:\Develops\temp_dir> "Heloo" > file_second.txt
PS C:\Develops\temp_dir> ls


    디렉터리: C:\Develops\temp_dir


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15  오전 11:14                VM
-a----      2025-07-15   오후 3:08             16 file_second.txt


PS C:\Develops\temp_dir> cat .\file_second.txt
Heloo
PS C:\Develops\temp_dir> pwd

Path
----
C:\Develops\temp_dir


PS C:\Develops\temp_dir> cd ..
PS C:\Develops> cd quests
cd : 'C:\Develops\quests' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd quests
+ ~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\quests:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> cd C:\Develops\quests
cd : 'C:\Develops\quests' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd C:\Develops\quests
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\quests:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> cd C:\Develops\quests
cd : 'C:\Develops\quests' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd C:\Develops\quests
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\quests:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> cd C:\Develops\quests
cd : 'C:\Develops\quests' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd C:\Develops\quests
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\quests:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> pwd

Path
----
C:\Develops


PS C:\Develops> cd C:\Develops\quests
cd : 'C:\Develops\quests' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd C:\Develops\quests
+ ~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\quests:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> cd C:\Develops\quests
PS C:\Develops\quests> pwd

Path
----
C:\Develops\quests


PS C:\Develops\quests> mkdir powershell_practice/


    디렉터리: C:\Develops\quests


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:52                powershell_practice


PS C:\Develops\quests> cd powershell_practice/
PS C:\Develops\quests\powershell_practice> mkdir documents/


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                documents


PS C:\Develops\quests\powershell_practice> mkdir images/


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                images


PS C:\Develops\quests\powershell_practice> mkdir backup/


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                backup


PS C:\Develops\quests\powershell_practice> mkdir temp/


    디렉터리: C:\Develops\quests\powershell_practice


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 3:53                temp


PS C:\Develops\quests\powershell_practice> cd documents
PS C:\Develops\quests\powershell_practice\documents> ls
PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests
PS C:\Develops\quests> cd C:\Develops\quests\powershell_practice\documents\documents
cd : 'C:\Develops\quests\powershell_practice\documents\documents' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd C:\Develops\quests\powershell_practice\documents\documents
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...ments\documents:String) [Set-Location], ItemNotFoundE
   xception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops\quests> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> "Hello PowerShell" > hello.txt
PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\images
PS C:\Develops\quests\powershell_practice\images> touch spacefile
touch : 'touch' 용어가 cmdlet, 함수, 스크립트 파일 또는 실행할 수 있는 프로그램 이름으로 인식되지 않습니다. 이름이 정확
한지 확인하고 경로가 포함된 경우 경로가 올바른지 검증한 다음 다시 시도하십시오.
위치 줄:1 문자:1
+ touch spacefile
+ ~~~~~
    + CategoryInfo          : ObjectNotFound: (touch:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Develops\quests\powershell_practice\images> echo "" > spacefile.txt
PS C:\Develops\quests\powershell_practice\images> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> cat hello.txt
Hello PowerShell
PS C:\Develops\quests\powershell_practice\documents> ls -al
Get-ChildItem : 매개 변수 이름 'al'과(와) 일치하는 매개 변수를 찾을 수 없습니다.
위치 줄:1 문자:4
+ ls -al
+    ~~~
    + CategoryInfo          : InvalidArgument: (:) [Get-ChildItem], ParameterBindingException
    + FullyQualifiedErrorId : NamedParameterNotFound,Microsoft.PowerShell.Commands.GetChildItemCommand

PS C:\Develops\quests\powershell_practice\documents> ls -a
Get-ChildItem : 매개 변수 이름 'a'이(가) 모호하므로 매개 변수를 처리할 수 없습니다. 일치하는 항목은 다음과 같습니다.  -
Attributes -Directory -File -Hidden -ReadOnly -System.
위치 줄:1 문자:4
+ ls -a
+    ~~
    + CategoryInfo          : InvalidArgument: (:) [Get-ChildItem], ParameterBindingException
    + FullyQualifiedErrorId : AmbiguousParameter,Microsoft.PowerShell.Commands.GetChildItemCommand

PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:55             38 hello.txt


PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice
PS C:\Develops\quests\powershell_practice> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> cp hello.txt C:\Develops\quests\powershell_practice\backup\
PS C:\Develops\quests\powershell_practice\documents> cp C:\Develops\quests\powershell_practice\images\ C:\Develops\quests\powershell_practice\backup\
PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\temp\
PS C:\Develops\quests\powershell_practice\temp> echo "" > test.txt
PS C:\Develops\quests\powershell_practice\temp> mv test.txt C:\Develops\quests\powershell_practice\documnets\
PS C:\Develops\quests\powershell_practice\temp> cd C:\Develops\quests\powershell_practice\documents\
PS C:\Develops\quests\powershell_practice\documents> mv test.txt moved_file.txt
mv : 'C:\Develops\quests\powershell_practice\documents\test.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ mv test.txt moved_file.txt
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...uments\test.txt:String) [Move-Item], ItemNotFoundExce
   ption
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.MoveItemCommand

PS C:\Develops\quests\powershell_practice\documents> mv test.txt moved_file.txt
mv : 'C:\Develops\quests\powershell_practice\documents\test.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ mv test.txt moved_file.txt
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...uments\test.txt:String) [Move-Item], ItemNotFoundExce
   ption
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.MoveItemCommand

PS C:\Develops\quests\powershell_practice\documents> pwd

Path
----
C:\Develops\quests\powershell_practice\documents


PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:55             38 hello.txt


PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\temp
PS C:\Develops\quests\powershell_practice\temp> ls
PS C:\Develops\quests\powershell_practice\temp> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> ls


    디렉터리: C:\Develops\quests\powershell_practice\documents


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----      2025-07-15   오후 3:55             38 hello.txt


PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\temp
PS C:\Develops\quests\powershell_practice\temp> echo "" > test.txt
PS C:\Develops\quests\powershell_practice\temp> mv test.txt C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\temp> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> mv test.txt moved_file.txt
PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\images
PS C:\Develops\quests\powershell_practice\images> mv photo1.jpg picture1.jpg
mv : 'C:\Develops\quests\powershell_practice\images\photo1.jpg' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ mv photo1.jpg picture1.jpg
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...ages\photo1.jpg:String) [Move-Item], ItemNotFoundExce
   ption
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.MoveItemCommand

PS C:\Develops\quests\powershell_practice\images> echo "" > photo1.jpg
PS C:\Develops\quests\powershell_practice\images> mv photo1.jpg picture1.jpg
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> mv temp temporary
PS C:\Develops\quests\powershell_practice> cd C:\Develops\quests\powershell_practice\documents
PS C:\Develops\quests\powershell_practice\documents> rm moved_file.txt
PS C:\Develops\quests\powershell_practice\documents> cd C:\Develops\quests\powershell_practice\images
PS C:\Develops\quests\powershell_practice\images> echo "" > photo2.png
PS C:\Develops\quests\powershell_practice\images> rm photo2.png
PS C:\Develops\quests\powershell_practice\images> cd ..
PS C:\Develops\quests\powershell_practice> rm .\temporary\
PS C:\Develops\quests\powershell_practice> rm .\backup\

확인
C:\Develops\quests\powershell_practice\backup\의 항목에는 하위 항목이 있으며 Recurse 매개 변수를 지정하지 않았습니다.
계속하면 해당 항목과 모든 하위 항목이 제거됩니다. 계속하시겠습니까?
[Y] 예(Y)  [A] 모두 예(A)  [N] 아니요(N)  [L] 모두 아니요(L)  [S] 일시 중단(S)  [?] 도움말 (기본값은 "Y"): y
PS C:\Develops\quests\powershell_practice> cd C:\Develops\quests
PS C:\Develops\quests> mkdir my_project/


    디렉터리: C:\Develops\quests


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:18                my_project


PS C:\Develops\quests> cd my_project/
PS C:\Develops\quests\my_project> mkdir src/


    디렉터리: C:\Develops\quests\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:18                src


PS C:\Develops\quests\my_project> cd src/
PS C:\Develops\quests\my_project\src> mkdir main.py | echo "print('hello World')" > main.py
mkdir : 지정한 이름(C:\Develops\quests\my_project\src\main.py)의 항목이 이미 있습니다.
위치 줄:1 문자:1
+ mkdir main.py | echo "print('hello World')" > main.py
+ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ResourceExists: (C:\Develops\que...ect\src\main.py:String) [New-Item], IOException
    + FullyQualifiedErrorId : DirectoryExist,Microsoft.PowerShell.Commands.NewItemCommand

PS C:\Develops\quests\my_project\src> mkdir main.py
mkdir : 지정한 이름(C:\Develops\quests\my_project\src\main.py)의 항목이 이미 있습니다.
위치 줄:1 문자:1
+ mkdir main.py
+ ~~~~~~~~~~~~~
    + CategoryInfo          : ResourceExists: (C:\Develops\que...ect\src\main.py:String) [New-Item], IOException
    + FullyQualifiedErrorId : DirectoryExist,Microsoft.PowerShell.Commands.NewItemCommand

PS C:\Develops\quests\my_project\src>  echo "print('hello World')" > main.py
PS C:\Develops\quests\my_project\src> cd ..
PS C:\Develops\quests\my_project> mkdir docs/


    디렉터리: C:\Develops\quests\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:20                docs


PS C:\Develops\quests\my_project> cd docs/
PS C:\Develops\quests\my_project\docs> echo "Thos is my project" > readme.txt
PS C:\Develops\quests\my_project\docs> cd ..
PS C:\Develops\quests\my_project> mkdir tests/


    디렉터리: C:\Develops\quests\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                tests


PS C:\Develops\quests\my_project> mkdir build/


    디렉터리: C:\Develops\quests\my_project


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-15   오후 4:21                build


PS C:\Develops\quests\my_project> cd src
PS C:\Develops\quests\my_project\src> cp main.py C:\Develops\quests\my_project\build
PS C:\Develops\quests\my_project\src> cd C:\Develops\quests\my_project\docs
PS C:\Develops\quests\my_project\docs> mv readme.txt project_info.txt
PS C:\Develops\quests\my_project\docs> cd ..
PS C:\Develops\quests\my_project> rmdir tests
PS C:\Develops\quests\my_project> tree
폴더 PATH의 목록입니다.
볼륨 일련 번호는 52B6-33C5입니다.
C:.
├─build
├─docs
└─src
PS C:\Develops\quests\my_project> cd C:\Develops\quests\my_project\src
PS C:\Develops\quests\my_project\src> cat main.py
print('hello World')
PS C:\Develops\quests\my_project\src> cd C:\Develops\quests\my_project\docs
PS C:\Develops\quests\my_project\docs> cat readme.txt
cat : 'C:\Develops\quests\my_project\docs\readme.txt' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cat readme.txt
+ ~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\que...docs\readme.txt:String) [Get-Content], ItemNotFoundEx
   ception
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.GetContentCommand

PS C:\Develops\quests\my_project\docs> cat project_info.txt
Thos is my project
PS C:\Develops\quests\my_project\docs>
```
