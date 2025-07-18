``` shell

[fedora@localhost quests]$ mkdir shell_practice
mkdir: cannot create directory ‘shell_practice’: File exists
[fedora@localhost quests]$ cd shell_practice
[fedora@localhost shell_practice]$ ls
backup  backup.sh  config.conf  data.txt  logs  notes.md  projects  readme.txt  scripts  server.conf  sysinfo.sh
[fedora@localhost shell_practice]$ rm -r *
[fedora@localhost shell_practice]$ touch hello.sh backup.sh system_info.txt
[fedora@localhost shell_practice]$ touch data1.txt data2.txt notes.md
[fedora@localhost shell_practice]$ mkdir scripts logs temp
[fedora@localhost shell_practice]$ nano hello.sh
[fedora@localhost shell_practice]$ chmod 777 hello.sh
[fedora@localhost shell_practice]$ nanon system_info.txt
bash: nanon: command not found...
Similar command is: 'nano'
[fedora@localhost shell_practice]$ nano system_info.txt
[fedora@localhost shell_practice]$ chmod 777 system_info.txt 
[fedora@localhost shell_practice]$ systemctl
  UNIT                                                                                 LOAD   ACTIVE SUB       DES>
  proc-sys-fs-binfmt_misc.automount                                                    loaded active waiting   Arb>
  sys-devices-pci0000:00-0000:00:07.1-ata2-host1-target1:0:0-1:0:0:0-block-sr0.device  loaded active plugged   VMw>
  sys-devices-pci0000:00-0000:00:11.0-0000:02:01.0-sound-card0-controlC0.device        loaded active plugged   /sy>
  sys-devices-pci0000:00-0000:00:15.0-0000:03:00.0-net-ens160.device                   loaded active plugged   VMX>
  sys-devices-pci0000:00-0000:00:16.0-0000:0b:00.0-nvme-nvme0-nvme0n1-nvme0n1p1.device loaded active plugged   VMw>
  sys-devices-pci0000:00-0000:00:16.0-0000:0b:00.0-nvme-nvme0-nvme0n1-nvme0n1p2.device loaded active plugged   VMw>
  sys-devices-pci0000:00-0000:00:16.0-0000:0b:00.0-nvme-nvme0-nvme0n1.device           loaded active plugged   VMw>
  sys-devices-platform-serial8250-tty-ttyS0.device                                     loaded active plugged   /sy>
  sys-devices-platform-serial8250-tty-ttyS1.device                                     loaded active plugged   /sy>
  sys-devices-platform-serial8250-tty-ttyS2.device                                     loaded active plugged   /sy>
  sys-devices-platform-serial8250-tty-ttyS3.device                                     loaded active plugged   /sy>
  sys-devices-virtual-block-dm\x2d0.device                                             loaded active plugged   /sy>
  sys-devices-virtual-block-dm\x2d1.device                                             loaded active plugged   /sy>
  sys-devices-virtual-misc-rfkill.device                                               loaded active plugged   /sy>
  sys-module-configfs.device                                                           loaded active plugged   /sy>
  sys-module-fuse.device                                                               loaded active plugged   /sy>
  sys-subsystem-net-devices-ens160.device                                              loaded active plugged   VMX>
  -.mount                                                                              loaded active mounted   Roo>
  boot.mount                                                                           loaded active mounted   /bo>
  dev-hugepages.mount                                                                  loaded active mounted   Hug>
  dev-mqueue.mount                                                                     loaded active mounted   POS>
  run-credentials-systemd\x2dsysctl.service.mount                                      loaded active mounted   /ru>
  run-credentials-systemd\x2dtmpfiles\x2dsetup.service.mount                           loaded active mounted   /ru>
  run-credentials-systemd\x2dtmpfiles\x2dsetup\x2ddev.service.mount                    loaded active mounted   /ru>
  run-media-fedora-Rocky\x2d9\x2d6\x2dx86_64\x2ddvd.mount                              loaded active mounted   /ru>
  run-user-1000-doc.mount                                                              loaded active mounted   /ru>
  run-user-1000-gvfs.mount                                                             loaded active mounted   /ru>
  run-user-1000.mount                                                                  loaded active mounted   /ru>
  run-vmblock\x2dfuse.mount                                                            loaded active mounted   VMw>
  sys-fs-fuse-connections.mount                                                        loaded active mounted   FUS>
  sys-kernel-config.mount                                                              loaded active mounted   Ker>
  sys-kernel-debug.mount                                                               loaded active mounted   Ker>
  sys-kernel-tracing.mount                                                             loaded active mounted   Ker>
  cups.path                                                                            loaded active running   CUP>
  systemd-ask-password-plymouth.path                                                   loaded active waiting   For>
  systemd-ask-password-wall.path                                                       loaded active waiting   For>
  init.scope                                                                           loaded active running   Sys>
  session-2.scope                                                                      loaded active running   Ses>
[fedora@localhost shell_practice]$ nano backup.sh
[fedora@localhost shell_practice]$ chmod 777 backup.sh
[fedora@localhost shell_practice]$ ./backup.sh
Fri Jul 18 05:26:25 PM KST 2025
ggggggg
total 12
-rwxrwxrwx. 1 fedora fedora 26 Jul 18 17:24 backup.sh
-rw-r--r--. 1 fedora fedora  0 Jul 18 17:19 data1.txt
-rw-r--r--. 1 fedora fedora  0 Jul 18 17:19 data2.txt
-rwxrwxrwx. 1 fedora fedora 24 Jul 18 17:21 hello.sh
drwxr-xr-x. 2 fedora fedora  6 Jul 18 17:19 logs
-rw-r--r--. 1 fedora fedora  0 Jul 18 17:19 notes.md
drwxr-xr-x. 2 fedora fedora  6 Jul 18 17:19 scripts
-rwxrwxrwx. 1 fedora fedora 11 Jul 18 17:22 system_info.txt
drwxr-xr-x. 2 fedora fedora  6 Jul 18 17:19 temp
[fedora@localhost shell_practice]$ pwd
/home/fedora/quests/shell_practice
[fedora@localhost shell_practice]$ mkdir -p /home/fedora/quests/shell_practice/new_project/ && cd /home/fedora/quests/shell_practice/new_project/
[fedora@localhost new_project]$ touch test.txt && nano test.txt
[fedora@localhost new_project]$ touch test_script.sh && chmod 700 test_script.sh
[fedora@localhost new_project]$ chmod g+rx test_script.sh 
[fedora@localhost new_project]$ ls -l test_script.sh 
-rwxr-x---. 1 fedora fedora 0 Jul 18 17:36 test_script.sh
[fedora@localhost new_project]$ chmod 000 test_script.sh 
[fedora@localhost new_project]$ chmod 660 test_script.sh 
[fedora@localhost new_project]$ nano setup.sh
[fedora@localhost new_project]$ chmod 777 setup.sh
[fedora@localhost new_project]$ nano setup.sh
[fedora@localhost new_project]$ pwd
/home/fedora/quests/shell_practice/new_project
[fedora@localhost new_project]$ /home/fedora/quests/shell_practice/new_project/setup.sh
bash: /home/fedora/quests/shell_practice/new_project/setup.sh: bin/bash: bad interpreter: No such file or directory
[fedora@localhost new_project]$ /home/fedora/quests/shell_practice/new_project/setup.sh
bash: /home/fedora/quests/shell_practice/new_project/setup.sh: bin/bash: bad interpreter: No such file or directory
[fedora@localhost new_project]$ nano.sh
bash: nano.sh: command not found...
[fedora@localhost new_project]$ nano setup.sh
[fedora@localhost new_project]$ /home/fedora/quests/shell_practice/new_project/setup.sh
echo finish~
[fedora@localhost new_project]$ ./logs/setup.log
bash: ./logs/setup.log: Permission denied
[fedora@localhost new_project]$ chmod 777 setup.log
chmod: cannot access 'setup.log': No such file or directory
[fedora@localhost new_project]$ chmod 777 ./logs/setup.log
[fedora@localhost new_project]$ ./logs/setup.log
./logs/setup.log: line 1: Fri: command not found
[fedora@localhost new_project]$ mkdir -p ./project_logs && chmod u-w project_logs && ls -l ./project_logs
total 0
[fedora@localhost new_project]$ mkdir -p ./project_logs && chmod u-w project_logs && ls -l 
total 8
drwxr-xr-x. 2 fedora fedora  23 Jul 18 17:47 logs
dr-xr-xr-x. 2 fedora fedora   6 Jul 18 17:52 project_logs
-rwxrwxrwx. 1 fedora fedora 160 Jul 18 17:47 setup.sh
-rw-rw----. 1 fedora fedora   0 Jul 18 17:36 test_script.sh
-rw-r--r--. 1 fedora fedora 250 Jul 18 17:35 test.txt
[fedora@localhost new_project]$ nano check_dir.sh
[fedora@localhost new_project]$ chmod 777 check_dir.sh
[fedora@localhost new_project]$ cd ./project_logs && touch log.txt && echo "finished" 
touch: cannot touch 'log.txt': Permission denied
[fedora@localhost project_logs]$ chmod 777 .
[fedora@localhost project_logs]$ cd ./project_logs && touch log.txt && echo "finished" 
bash: cd: ./project_logs: No such file or directory
[fedora@localhost project_logs]$ cd -
/home/fedora/quests/shell_practice/new_project
[fedora@localhost new_project]$ cd ./project_logs && touch log.txt && echo "finished" 
finished
[fedora@localhost project_logs]$ ls -l check_dir.sh
ls: cannot access 'check_dir.sh': No such file or directory
[fedora@localhost project_logs]$ cd -
/home/fedora/quests/shell_practice/new_project
[fedora@localhost new_project]$ chmod 777 new_project
chmod: cannot access 'new_project': No such file or directory
[fedora@localhost new_project]$ chmod 777 ./new_project
chmod: cannot access './new_project': No such file or directory
[fedora@localhost new_project]$ cd /home/fedora/quests/shell_practice/new_project/project_logs/
[fedora@localhost project_logs]$ ls -l
total 0
-rw-r--r--. 1 fedora fedora 0 Jul 18 18:02 log.txt
[fedora@localhost project_logs]$ cd ../
[fedora@localhost new_project]$ ls -l
total 12
-rwxrwxrwx. 1 fedora fedora 134 Jul 18 17:58 check_dir.sh
drwxr-xr-x. 2 fedora fedora  23 Jul 18 17:47 logs
drwxrwxrwx. 2 fedora fedora  21 Jul 18 18:02 project_logs
-rwxrwxrwx. 1 fedora fedora 160 Jul 18 17:47 setup.sh
-rw-rw----. 1 fedora fedora   0 Jul 18 17:36 test_script.sh
-rw-r--r--. 1 fedora fedora 250 Jul 18 17:35 test.txt
[fedora@localhost new_project]$ chmod g-w,o-w check_dir.sh
[fedora@localhost new_project]$ ls -l
total 12
-rwxr-xr-x. 1 fedora fedora 134 Jul 18 17:58 check_dir.sh
drwxr-xr-x. 2 fedora fedora  23 Jul 18 17:47 logs
drwxrwxrwx. 2 fedora fedora  21 Jul 18 18:02 project_logs
-rwxrwxrwx. 1 fedora fedora 160 Jul 18 17:47 setup.sh
-rw-rw----. 1 fedora fedora   0 Jul 18 17:36 test_script.sh
-rw-r--r--. 1 fedora fedora 250 Jul 18 17:35 test.txt



```