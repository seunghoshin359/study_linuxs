PS C:\Users\Administrator> cd C:\Develops
PS C:\Develops> pwd

Path
----
C:\Develops


PS C:\Develops> cd-
cd- : 'cd-' 용어가 cmdlet, 함수, 스크립트 파일 또는 실행할 수 있는 프로그램 이름으로 인식되지 않습니다. 이름이 정확한지
 확인하고 경로가 포함된 경우 경로가 올바른지 검증한 다음 다시 시도하십시오.
위치 줄:1 문자:1
+ cd-
+ ~~~
    + CategoryInfo          : ObjectNotFound: (cd-:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException

PS C:\Develops> cd -
cd : 'C:\Develops\-' 경로는 존재하지 않으므로 찾을 수 없습니다.
위치 줄:1 문자:1
+ cd -
+ ~~~~
    + CategoryInfo          : ObjectNotFound: (C:\Develops\-:String) [Set-Location], ItemNotFoundException
    + FullyQualifiedErrorId : PathNotFound,Microsoft.PowerShell.Commands.SetLocationCommand

PS C:\Develops> cd .
PS C:\Develops> cd ..
PS C:\> cd C:\
PS C:\> cd C:\Develops
PS C:\Develops> ls


    디렉터리: C:\Develops


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----      2025-07-14  오전 11:58                Downloads
d-----      2025-07-15  오전 11:14                VM
