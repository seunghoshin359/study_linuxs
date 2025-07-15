``` SHELL
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
PS C:\Develops\temp_dir>
```

# 파일 만들기