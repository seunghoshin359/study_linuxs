``` shell
[fedora@localhost ~]$ cd /home/fedora/quests
[fedora@localhost quests]$ cd /home/fedora/quests/
[fedora@localhost quests]$ mkdir shell_practice
[fedora@localhost quests]$ cd shell_practice
[fedora@localhost shell_practice]$ touch data.txt config.conf notes.md
[fedora@localhost shell_practice]$ mkdir scripts logs backup
[fedora@localhost shell_practice]$ nano server.conf
[fedora@localhost shell_practice]$ ls
backup  config.conf  data.txt  logs  notes.md  scripts  server.conf
[fedora@localhost shell_practice]$ nano data.txt
[fedora@localhost shell_practice]$ nano backup.sh
[fedora@localhost shell_practice]$ nano sysinfo.sh
[fedora@localhost shell_practice]$ du -f
du: invalid option -- 'f'
Try 'du --help' for more information.
[fedora@localhost shell_practice]$ du
0	./scripts
0	./logs
0	./backup
16	.
[fedora@localhost shell_practice]$ df -u
df: invalid option -- 'u'
Try 'df --help' for more information.
[fedora@localhost shell_practice]$ df
Filesystem          1K-blocks     Used Available Use% Mounted on
devtmpfs                 4096        0      4096   0% /dev
tmpfs                  890352        0    890352   0% /dev/shm
tmpfs                  356144     7332    348812   3% /run
/dev/mapper/rl-root  17756160  5813264  11942896  33% /
/dev/nvme0n1p1         983040   374360    608680  39% /boot
tmpfs                  178068      108    177960   1% /run/user/1000
/dev/sr0             12549994 12549994         0 100% /run/media/fedora/Rocky-9-6-x86_64-dvd
[fedora@localhost shell_practice]$ df -k
Filesystem          1K-blocks     Used Available Use% Mounted on
devtmpfs                 4096        0      4096   0% /dev
tmpfs                  890352        0    890352   0% /dev/shm
tmpfs                  356144     7332    348812   3% /run
/dev/mapper/rl-root  17756160  5813264  11942896  33% /
/dev/nvme0n1p1         983040   374360    608680  39% /boot
tmpfs                  178068      108    177960   1% /run/user/1000
/dev/sr0             12549994 12549994         0 100% /run/media/fedora/Rocky-9-6-x86_64-dvd
[fedora@localhost shell_practice]$ df --help
Usage: df [OPTION]... [FILE]...
Show information about the file system on which each FILE resides,
or all file systems by default.

Mandatory arguments to long options are mandatory for short options too.
  -a, --all             include pseudo, duplicate, inaccessible file systems
  -B, --block-size=SIZE  scale sizes by SIZE before printing them; e.g.,
                           '-BM' prints sizes in units of 1,048,576 bytes;
                           see SIZE format below
      --direct          show statistics for a file instead of mount point
  -h, --human-readable  print sizes in powers of 1024 (e.g., 1023M)
  -H, --si              print sizes in powers of 1000 (e.g., 1.1G)
  -i, --inodes          list inode information instead of block usage
  -k                    like --block-size=1K
  -l, --local           limit listing to local file systems
      --no-sync         do not invoke sync before getting usage info (default)
      --output[=FIELD_LIST]  use the output format defined by FIELD_LIST,
                               or print all fields if FIELD_LIST is omitted.
  -P, --portability     use the POSIX output format
      --sync            invoke sync before getting usage info
      --total           elide all entries insignificant to available space,
                          and produce a grand total
  -t, --type=TYPE       limit listing to file systems of type TYPE
  -T, --print-type      print file system type
  -x, --exclude-type=TYPE   limit listing to file systems not of type TYPE
  -v                    (ignored)
      --help     display this help and exit
      --version  output version information and exit

Display values are in units of the first available SIZE from --block-size,
and the DF_BLOCK_SIZE, BLOCK_SIZE and BLOCKSIZE environment variables.
Otherwise, units default to 1024 bytes (or 512 if POSIXLY_CORRECT is set).

The SIZE argument is an integer and optional unit (example: 10K is 10*1024).
Units are K,M,G,T,P,E,Z,Y (powers of 1024) or KB,MB,... (powers of 1000).
Binary prefixes can be used, too: KiB=K, MiB=M, and so on.

FIELD_LIST is a comma-separated list of columns to be included.  Valid
field names are: 'source', 'fstype', 'itotal', 'iused', 'iavail', 'ipcent',
'size', 'used', 'avail', 'pcent', 'file' and 'target' (see info page).

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/df>
or available locally via: info '(coreutils) df invocation'
[fedora@localhost shell_practice]$ df -l
Filesystem          1K-blocks     Used Available Use% Mounted on
devtmpfs                 4096        0      4096   0% /dev
tmpfs                  890352        0    890352   0% /dev/shm
tmpfs                  356144     7332    348812   3% /run
/dev/mapper/rl-root  17756160  5813264  11942896  33% /
/dev/nvme0n1p1         983040   374360    608680  39% /boot
tmpfs                  178068      108    177960   1% /run/user/1000
/dev/sr0             12549994 12549994         0 100% /run/media/fedora/Rocky-9-6-x86_64-dvd
[fedora@localhost shell_practice]$ nano sysinfo.sh
[fedora@localhost shell_practice]$ pwd
/home/fedora/quests/shell_practice
[fedora@localhost shell_practice]$ mkdir projects && touch /home/fedora/quests/shell_practice/readme.txt
[fedora@localhost shell_practice]$ ls server.conf
server.conf
[fedora@localhost shell_practice]$ cat server.conf
PORT=8080
HOST=localhost
DEBUG=true
[fedora@localhost shell_practice]$ cd ./logs/ && touch access.log && ls -l && cd ..
total 0
-rw-r--r--. 1 fedora fedora 0 Jul 18 15:16 access.log
[fedora@localhost shell_practice]$ chmod 777 server.conf
[fedora@localhost shell_practice]$ chmod 777 data.txt
[fedora@localhost shell_practice]$ chmod 777 backup.sh
[fedora@localhost shell_practice]$ chmod 777 sysinfo.sh


```