
각 실습 후 su - 사용자명, ls -R ~/Downloads, cat 등을 통해 적용 여부를 확인하십시오.

🧪 환경 변수 및 초기화 스크립트 실습 문제
🔹 문제 1. 로그인 시마다 "Welcome, USERNAME" 메시지를 출력하시오.
조건:
현재 로그인한 사용자명을 포함할 것 ($USER)


로그인할 때마다 자동으로 출력되도록 설정할 것



🔹 문제 2. 로그인 시 사용자의 Downloads/ 폴더 내 일반 파일을 삭제하시오.
조건:
경로: ~/Downloads/


일반 파일만 삭제 (서브디렉토리, 숨김파일은 삭제하지 않음)


로그인 시 자동 실행



🔹 문제 3. 로그인할 때마다 ~/Downloads/ 경로에 다음 구조로 디렉토리 및 파일을 자동 생성하도록 설정하시오.
생성 구조:
~/Downloads/
 └── auto_created/
      ├── info.txt
      └── logs/
           └── log.txt

조건:
파일에는 임의의 간단한 문자열이 들어갈 것


매 로그인마다 자동 생성



🔹 문제 4. /etc/profile을 수정하여, 로그인 시 모든 사용자에게 공지 메시지 /etc/login_notice.txt를 출력하도록 설정하시오.
조건:
출력 방식은 cat, echo 등 자유


시스템 전체 사용자에게 적용


/etc/login_notice.txt는 임의의 내용을 사전에 작성해 둘 것


sudo 권한 필요








```shell
[root@localhost ~]# nano .bash_profile
[root@localhost ~]# su - fedora
[fedora@localhost ~]$ nano .bash_profile
[fedora@localhost ~]$ echo "welcome, $USER"
welcome, fedora
[fedora@localhost ~]$ nano .bash_profile
[fedora@localhost ~]$ rm --help
Usage: rm [OPTION]... [FILE]...
Remove (unlink) the FILE(s).

  -f, --force           ignore nonexistent files and arguments, never prompt
  -i                    prompt before every removal
  -I                    prompt once before removing more than three files, or
                          when removing recursively; less intrusive than -i,
                          while still giving protection against most mistakes
      --interactive[=WHEN]  prompt according to WHEN: never, once (-I), or
                          always (-i); without WHEN, prompt always
      --one-file-system  when removing a hierarchy recursively, skip any
                          directory that is on a file system different from
                          that of the corresponding command line argument
      --no-preserve-root  do not treat '/' specially
      --preserve-root[=all]  do not remove '/' (default);
                              with 'all', reject any command line argument
                              on a separate device from its parent
  -r, -R, --recursive   remove directories and their contents recursively
  -d, --dir             remove empty directories
  -v, --verbose         explain what is being done
      --help     display this help and exit
      --version  output version information and exit

By default, rm does not remove directories.  Use the --recursive (-r or -R)
option to remove each listed directory, too, along with all of its contents.

To remove a file whose name starts with a '-', for example '-foo',
use one of these commands:
  rm -- -foo

  rm ./-foo

Note that if you use rm to remove a file, it might be possible to recover
some of its contents, given sufficient expertise and/or time.  For greater
assurance that the contents are truly unrecoverable, consider using shred.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/rm>
or available locally via: info '(coreutils) rm invocation'
[fedora@localhost ~]$ pwd
/home/fedora
[fedora@localhost ~]$ touch .sing ./
[fedora@localhost ~]$ rm -rf ./
rm: refusing to remove '.' or '..' directory: skipping './'
[fedora@localhost ~]$ rm -rf ./*
[fedora@localhost ~]$ ls -l
total 0
[fedora@localhost ~]$ touch .sing ./
[fedora@localhost ~]$ rm -r ./*
rm: cannot remove './*': No such file or directory
[fedora@localhost ~]$ nano .bash_profile
[fedora@localhost ~]$ nano .bash_profile
[fedora@localhost ~]$ nano .bash_profile
[fedora@localhost ~]$ nano /etc/profile
[fedora@localhost ~]$ 
[fedora@localhost ~]$ echo "hello" > /etc/login_notice.txt  
-bash: /etc/login_notice.txt: Permission denied
[fedora@localhost ~]$ sudo echo "hello" > /etc/login_notice.txt  
-bash: /etc/login_notice.txt: Permission denied
[fedora@localhost ~]$ ls -l /etc
total 1316
drwxr-xr-x.  3 root root        28 Jul 21 09:37 accountsservice
-rw-r--r--.  1 root root        16 Jul 21 09:43 adjtime
-rw-r--r--.  1 root root      1529 Jun 23  2020 aliases
drwxr-xr-x.  3 root root        65 Jul 21 09:39 alsa
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 alternatives
-rw-r--r--.  1 root root       541 May  2 18:15 anacrontab
-rw-r--r--.  1 root root       833 Feb 11  2023 appstream.conf
-rw-r--r--.  1 root root        55 May  3 04:25 asound.conf
-rw-r--r--.  1 root root         1 Oct 26  2022 at.deny
drwxr-x---.  4 root root       100 Jul 21 09:39 audit
drwxr-xr-x.  3 root root      4096 Jul 21 09:43 authselect
drwxr-xr-x.  4 root root        71 Jul 21 09:37 avahi
drwxr-xr-x.  2 root root       124 Jul 21 09:39 bash_completion.d
-rw-r--r--.  1 root root      2658 Apr  8  2024 bashrc
-rw-r--r--.  1 root root       535 Nov  5  2024 bindresvport.blacklist
drwxr-xr-x.  2 root root         6 Apr 24 15:27 binfmt.d
dr-xr-xr-x.  2 root root        23 Jul 21 09:37 bluetooth
-rw-r-----.  1 root brlapi      33 Jul 21 09:39 brlapi.key
drwxr-xr-x.  7 root root        84 Jul 21 09:39 brltty
-rw-r--r--.  1 root root     28974 May 26  2022 brltty.conf
drwxr-xr-x.  3 root root        36 Jul 21 09:39 chromium
-rw-r--r--.  1 root root      1370 Apr 27 19:59 chrony.conf
-rw-r-----.  1 root chrony     540 Apr 27 19:59 chrony.keys
drwxr-xr-x.  2 root root        26 Jul 21 09:37 cifs-utils
drwxr-xr-x.  4 root root        66 Jul 21 09:39 cockpit
drwxr-xr-x.  7 root root       154 Jul 21 09:38 containers
drwxr-xr-x.  2 root root        21 Jul 21 09:37 cron.d
drwxr-xr-x.  2 root root         6 May 11  2022 cron.daily
-rw-r--r--.  1 root root         0 May  2 18:15 cron.deny
drwxr-xr-x.  2 root root        22 Jul 21 09:37 cron.hourly
drwxr-xr-x.  2 root root         6 May 11  2022 cron.monthly
-rw-r--r--.  1 root root       451 May 11  2022 crontab
drwxr-xr-x.  2 root root         6 May 11  2022 cron.weekly
drwxr-xr-x.  6 root root        81 Jul 21 09:37 crypto-policies
-rw-------.  1 root root         0 Jul 21 09:35 crypttab
-rw-r--r--.  1 root root      1401 Apr  8  2024 csh.cshrc
-rw-r--r--.  1 root root      1112 Apr  8  2024 csh.login
drwxr-xr-x.  4 root lp        4096 Jul 22 10:08 cups
drwxr-xr-x.  2 root root        34 Jul 21 09:39 cupshelpers
drwxr-xr-x.  4 root root        78 Jul 21 09:37 dbus-1
drwxr-xr-x.  4 root root        31 Jul 21 09:37 dconf
drwxr-xr-x.  2 root root        52 Jul 21 09:38 debuginfod
drwxr-xr-x.  2 root root        33 Jul 21 09:43 default
drwxr-xr-x.  2 root root        40 Jul 21 09:38 depmod.d
drwxr-xr-x.  3 root root        24 Jul 21 09:39 dhcp
-rw-r--r--.  1 root root      4673 May  2 17:29 DIR_COLORS
-rw-r--r--.  1 root root      4755 May  2 17:29 DIR_COLORS.lightbgcolor
drwxr-xr-x.  8 root root       128 Jul 21 09:36 dnf
-rw-r--r--.  1 root dnsmasq  27839 Apr 24  2024 dnsmasq.conf
drwxr-xr-x.  2 root dnsmasq      6 Apr 24  2024 dnsmasq.d
-rw-r--r--.  1 root root       117 Apr 24 17:42 dracut.conf
drwxr-xr-x.  2 root root         6 Apr 24 17:42 dracut.conf.d
drwxr-xr-x.  3 root root        37 Jul 21 09:37 egl
-rw-r--r--.  1 root root      4760 May 16  2022 enscript.cfg
-rw-r--r--.  1 root root         0 Apr  8  2024 environment
-rw-r--r--.  1 root root      1362 Jun 23  2020 ethertypes
-rw-r--r--.  1 root root         0 Jun 23  2020 exports
lrwxrwxrwx.  1 root root        56 May 17 11:49 favicon.png -> /usr/share/icons/hicolor/16x16/apps/fedora-logo-icon.png
-rw-r--r--.  1 root root        66 Jun 23  2020 filesystems
drwxr-xr-x.  3 root root        18 Jul 21 09:39 firefox
drwxr-x---.  8 root root       149 Jul 21 09:39 firewalld
drwxr-xr-x.  3 root root        23 Jul 21 09:38 flatpak
drwxr-xr-x.  3 root root        38 Jul 21 09:37 fonts
drwxr-xr-x.  2 root root        28 Jul 21 09:39 foomatic
-rw-r--r--.  1 root root        20 Aug 20  2021 fprintd.conf
-rw-r--r--.  1 root root       579 Jul 21 09:35 fstab
-rw-r--r--.  1 root root        38 Nov  5  2024 fuse.conf
drwxr-xr-x.  4 root root        64 Jul 21 09:39 fwupd
drwxr-xr-x.  2 root root         6 Nov  6  2024 gcrypt
drwxr-xr-x.  6 root root       107 Jul 21 09:39 gdm
drwxr-xr-x.  2 root root        26 Jul 21 09:37 geoclue
drwxr-xr-x.  3 root root        26 Jul 21 09:37 glvnd
drwxr-xr-x.  2 root root         6 Oct 28  2023 gnupg
-rw-r--r--.  1 root root        94 May 16  2022 GREP_COLORS
drwxr-xr-x.  4 root root        40 Jul 21 09:37 groff
-rw-r--r--.  1 root root      1025 Jul 22 10:24 group
-rw-r--r--.  1 root root      1021 Jul 22 10:23 group-
lrwxrwxrwx.  1 root root        22 May 16 04:15 grub2.cfg -> ../boot/grub2/grub.cfg
drwx------.  2 root root      4096 Jul 21 09:42 grub.d
----------.  1 root root       821 Jul 22 10:24 gshadow
----------.  1 root root       817 Jul 22 10:23 gshadow-
drwxr-xr-x.  3 root root        20 Jul 21 09:37 gss
-rw-r--r--.  1 root root         9 Jun 23  2020 host.conf
-rw-r--r--.  1 root root         1 Jul 21 09:43 hostname
-rw-r--r--.  1 root root       158 Jun 23  2020 hosts
drwxr-xr-x.  2 root root        24 Jul 21 09:36 hp
-rw-r--r--.  1 root root       490 Apr 24 15:27 inittab
-rw-r--r--.  1 root root       943 Jun 23  2020 inputrc
drwxr-xr-x.  2 root root        25 Jul 21 09:37 iscsi
-rw-r--r--.  1 root root        20 May 17 12:08 issue
drwxr-xr-x.  2 root root        27 Jul 21 09:39 issue.d
-rw-r--r--.  1 root root        19 May 17 12:08 issue.net
drwxr-xr-x.  4 root root        33 Jul 21 09:38 kdump
-rw-r--r--.  1 root root      8979 Jul 21 09:38 kdump.conf
drwxr-xr-x.  3 root root        38 Jul 21 09:43 kernel
drwxr-xr-x.  3 root root        17 Jul 21 09:38 keys
drwxr-xr-x.  2 root root         6 Apr 18  2023 keyutils
-rw-r--r--.  1 root root       880 Apr 29 04:29 krb5.conf
drwxr-xr-x.  2 root root        83 Jul 21 09:39 krb5.conf.d
-rw-r--r--.  1 root root     39631 Jul 21 09:47 ld.so.cache
-rw-r--r--.  1 root root        28 May 14 02:39 ld.so.conf
drwxr-xr-x.  2 root root        39 Jul 21 09:39 ld.so.conf.d
-rw-r-----.  1 root root       191 May  4 13:57 libaudit.conf
drwxr-xr-x.  3 root root        20 Jul 21 09:37 libblockdev
drwxr-xr-x.  2 root root      4096 Jul 21 09:37 libibverbs.d
drwxr-xr-x.  2 root root        35 Jul 21 09:37 libnl
drwxr-xr-x.  2 root root         6 May 26  2022 libpaper.d
drwxr-xr-x.  6 root root        70 Jul 21 09:36 libreport
drwxr-xr-x.  2 root root        62 Jul 21 09:36 libssh
-rw-r--r--.  1 root root      2391 Mar  1  2021 libuser.conf
-rw-r--r--.  1 root root        19 Jul 21 09:43 locale.conf
lrwxrwxrwx.  1 root root        32 Jul 21 09:43 localtime -> ../usr/share/zoneinfo/Asia/Seoul
-rw-r--r--.  1 root root      7779 Apr 27 11:46 login.defs
-rw-r--r--.  1 root root       496 Jun  7  2020 logrotate.conf
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 logrotate.d
drwxr-xr-x.  3 root root        43 Jul 21 09:38 lsm
drwxr-xr-x.  7 root root       115 Jul 21 09:37 lvm
-r--r--r--.  1 root root        33 Jul 21 09:37 machine-id
-rw-r--r--.  1 root root       111 Apr 16  2024 magic
-rw-r--r--.  1 root root       272 Apr 22  2020 mailcap
-rw-r--r--.  1 root root      5122 Apr 25 11:50 makedumpfile.conf.sample
-rw-r--r--.  1 root root      5235 Apr 15  2023 man_db.conf
drwxr-xr-x.  3 root root        41 Jul 21 09:39 mcelog
drwxr-xr-x.  3 root root        32 Jul 21 09:39 microcode_ctl
-rw-r--r--.  1 root root     67454 Apr 22  2020 mime.types
-rw-r--r--.  1 root root      1208 May  4 07:21 mke2fs.conf
drwxr-xr-x.  2 root root        54 Jul 21 09:39 modprobe.d
drwxr-xr-x.  2 root root         6 Apr 24 15:27 modules-load.d
-rw-r--r--.  1 root root         0 Jun 23  2020 motd
drwxr-xr-x.  2 root root        21 Jul 21 09:39 motd.d
lrwxrwxrwx.  1 root root        19 Jul 21 09:37 mtab -> ../proc/self/mounts
drwxr-xr-x.  2 root root         6 May  3 16:11 multipath
-rw-r--r--.  1 root root     10373 May  2 18:10 nanorc
-rw-r--r--.  1 root root       767 Nov  5  2024 netconfig
drwxr-xr-x.  7 root root       134 Jul 21 09:37 NetworkManager
-rw-r--r--.  1 root root        58 Jun 23  2020 networks
drwx------.  3 root root        66 Jul 21 09:37 nftables
lrwxrwxrwx.  1 root root        29 Jul 21 09:43 nsswitch.conf -> /etc/authselect/nsswitch.conf
-rw-r--r--.  1 root root      2108 May 14 02:41 nsswitch.conf.bak
drwxr-xr-x.  2 root root        57 Jul 21 09:39 nvme
drwxr-xr-x.  3 root root        36 Jul 21 09:37 openldap
drwxr-xr-x.  3 root root        20 Jul 21 09:39 opt
lrwxrwxrwx.  1 root root        21 May 17 12:08 os-release -> ../usr/lib/os-release
drwxr-xr-x.  3 root root        23 Jul 21 09:37 ostree
drwxr-xr-x.  2 root root        76 Jul 21 09:39 PackageKit
drwxr-xr-x.  2 root root      4096 Jul 21 09:43 pam.d
-rw-r--r--.  1 root root        68 May 26  2022 papersize
-rw-r--r--.  1 root root      2175 Jul 21 17:26 passwd
-rw-r--r--.  1 root root      2136 Jul 21 17:24 passwd-
-rw-r--r--.  1 root root      1362 May 15  2022 pbm2ppa.conf
-rw-r--r--.  1 root root      2872 May 18  2022 pinforc
drwxr-xr-x.  3 root root        21 Jul 21 09:37 pkcs11
drwxr-xr-x.  3 root root        27 Jul 21 09:37 pkgconfig
drwxr-xr-x. 10 root root       123 Jul 21 09:39 pki
drwxr-xr-x.  2 root root        28 Jul 21 09:37 plymouth
drwxr-xr-x.  5 root root        52 Jul 21 09:36 pm
-rw-r--r--.  1 root root      6300 May 15  2022 pnm2ppa.conf
drwxr-xr-x.  5 root root        72 Jul 21 09:37 polkit-1
drwxr-xr-x.  2 root root         6 May 16  2022 popt.d
-rw-r--r--.  1 root root       233 Jun 23  2020 printcap
-rw-r--r--.  1 root root      1899 Apr  8  2024 profile
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 profile.d
-rw-r--r--.  1 root root      6568 Jun 23  2020 protocols
drwxr-xr-x.  2 root root        25 Jul 21 09:38 pulse
drwxr-xr-x.  3 root root        50 Jul 21 09:39 qemu-ga
drwxr-xr-x.  3 root root        27 Jul 21 09:39 ras
drwxr-xr-x.  3 root root        36 Jul 21 09:37 rc.d
lrwxrwxrwx.  1 root root        13 Apr 24 15:27 rc.local -> rc.d/rc.local
lrwxrwxrwx.  1 root root        13 May 17 12:08 redhat-release -> rocky-release
-rw-r--r--.  1 root root      1787 Apr 18  2023 request-key.conf
drwxr-xr-x.  2 root root         6 Apr 18  2023 request-key.d
-rw-r--r--.  1 root root        74 Jul 21 09:47 resolv.conf
-rw-r--r--.  1 root root        36 May 17 12:08 rocky-release
-rw-r--r--.  1 root root        42 May 17 12:08 rocky-release-upstream
-rw-r--r--.  1 root root      1634 Aug  2  2021 rpc
drwxr-xr-x.  2 root root         6 Apr 22 13:30 rpm
-rw-r--r--.  1 root root       458 May  4 11:05 rsyncd.conf
-rw-r--r--.  1 root root      3380 May  3 03:55 rsyslog.conf
drwxr-xr-x.  2 root root         6 May  3 03:58 rsyslog.d
drwxr-xr-x.  2 root root        35 Jul 21 09:37 rwtab.d
drwxr-xr-x.  2 root root        61 Jul 21 09:37 samba
drwxr-xr-x.  3 root root      4096 Jul 21 09:38 sane.d
drwxr-xr-x.  2 root root         6 Apr 15  2023 sasl2
drwxr-xr-x.  7 root root      4096 Jul 21 09:37 security
drwxr-xr-x.  3 root root        57 Jul 21 09:37 selinux
-rw-r--r--.  1 root root    692252 Jun 23  2020 services
-rw-r--r--.  1 root root       216 Apr  8  2024 sestatus.conf
drwxr-xr-x.  2 root root        33 Jul 21 09:39 setroubleshoot
drwxr-xr-x.  3 root root        21 Jul 21 09:37 sgml
----------.  1 root root      1243 Jul 21 17:26 shadow
----------.  1 root root      1216 Jul 21 17:24 shadow-
-rw-r--r--.  1 root root        44 Jun 23  2020 shells
drwxr-xr-x.  3 root root        78 Jul 21 09:36 skel
drwxr-xr-x.  3 root root        74 Jul 21 09:39 smartmontools
drwxr-xr-x.  6 root root        86 Jul 21 09:39 sos
drwxr-xr-x.  4 root root        56 Jul 21 09:38 speech-dispatcher
drwxr-xr-x.  4 root root      4096 Jul 21 09:47 ssh
drwxr-xr-x.  2 root root        77 Jul 21 09:37 ssl
drwx------.  4 sssd sssd        31 Jul 21 09:37 sssd
drwxr-xr-x.  2 root root         6 Nov  3  2024 statetab.d
-rw-r--r--.  1 root root       149 Jul 21 17:26 subgid
-rw-r--r--.  1 root root       131 Jul 21 17:24 subgid-
-rw-r--r--.  1 root root       149 Jul 21 17:26 subuid
-rw-r--r--.  1 root root       131 Jul 21 17:24 subuid-
-rw-r-----.  1 root root      3983 Feb 15  2024 sudo.conf
-r--r-----.  1 root root      4328 Feb 15  2024 sudoers
drwxr-x---.  2 root root         6 Feb 15  2024 sudoers.d
-rw-r-----.  1 root root      3181 Feb 15  2024 sudo-ldap.conf
drwxr-xr-x.  3 root root      4096 Jul 21 09:43 sysconfig
-rw-r--r--.  1 root root       449 Apr 24 15:27 sysctl.conf
drwxr-xr-x.  2 root root        28 Jul 21 09:37 sysctl.d
drwxr-xr-x.  4 root root       166 Jul 21 09:37 systemd
lrwxrwxrwx.  1 root root        13 May 17 12:08 system-release -> rocky-release
-rw-r--r--.  1 root root        29 May 17 12:08 system-release-cpe
drwxr-xr-x.  2 root root         6 Nov  6  2023 terminfo
drwxr-xr-x.  2 root root        22 Jul 21 09:39 tmpfiles.d
drwxr-xr-x.  3 root root        51 Jul 21 09:37 tpm2-tss
-rw-r--r--.  1 root root       375 Apr 24 15:49 trusted-key.key
drwxr-xr-x.  3 root root       176 Jul 21 09:39 tuned
drwxr-xr-x.  4 root root        68 Jul 21 09:47 udev
drwxr-xr-x.  2 root root        60 Jul 21 09:39 udisks2
-rw-r--r--.  1 root root       624 May 16  2022 updatedb.conf
drwxr-xr-x.  2 root root        25 Jul 21 09:37 UPower
-rw-r--r--.  1 root root      1523 May 16  2022 usb_modeswitch.conf
-rw-r--r--.  1 root root        28 Jul 21 09:43 vconsole.conf
-rw-r--r--.  1 root root      4017 May 14 03:11 vimrc
-rw-r--r--.  1 root root      1184 May 14 03:11 virc
drwxr-xr-x.  4 root root      4096 Jul 21 09:38 vmware-tools
drwxr-xr-x.  5 root root        67 Jul 21 09:37 vulkan
-rw-r--r--.  1 root root      4925 Sep  4  2024 wgetrc
drwxr-xr-x.  6 root root        81 Jul 21 09:38 wireplumber
drwxr-xr-x.  2 root root        33 Jul 21 09:37 wpa_supplicant
drwxr-xr-x.  7 root root       121 Jul 21 09:39 X11
-rw-r--r--.  1 root root       817 May 26  2022 xattr.conf
drwxr-xr-x.  6 root root       125 Jul 21 09:37 xdg
drwxr-xr-x.  3 root root        36 Jul 21 09:37 xml
drwxr-xr-x.  2 root root        57 Jul 21 09:39 yum
lrwxrwxrwx.  1 root root        12 May  4 12:12 yum.conf -> dnf/dnf.conf
drwxr-xr-x.  2 root root        98 Jul 21 09:36 yum.repos.d
[fedora@localhost ~]$ ls -l /
total 28
dr-xr-xr-x.   2 root root    6 Nov  3  2024 afs
lrwxrwxrwx.   1 root root    7 Nov  3  2024 bin -> usr/bin
dr-xr-xr-x.   5 root root 4096 Jul 21 09:47 boot
drwxr-xr-x.  20 root root 3420 Jul 21 09:47 dev
drwxr-xr-x. 131 root root 8192 Jul 22 10:24 etc
drwxr-xr-x.  10 root root  107 Jul 21 17:26 home
lrwxrwxrwx.   1 root root    7 Nov  3  2024 lib -> usr/lib
lrwxrwxrwx.   1 root root    9 Nov  3  2024 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6 Nov  3  2024 media
drwxr-xr-x.   3 root root   18 Jul 21 09:38 mnt
drwxr-xr-x.   2 root root    6 Nov  3  2024 opt
dr-xr-xr-x. 322 root root    0 Jul 21 09:47 proc
dr-xr-x---.   6 root root 4096 Jul 22 11:58 root
drwxr-xr-x.  47 root root 1240 Jul 22 10:14 run
lrwxrwxrwx.   1 root root    8 Nov  3  2024 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 Nov  3  2024 srv
dr-xr-xr-x.  13 root root    0 Jul 21 09:47 sys
drwxrwxrwt.  19 root root 4096 Jul 22 12:01 tmp
drwxr-xr-x.  12 root root  144 Jul 21 09:36 usr
drwxr-xr-x.  20 root root 4096 Jul 21 09:47 var
[fedora@localhost ~]$ sudo echo "asdf" > /etc/login_notice.txt
-bash: /etc/login_notice.txt: Permission denied
[fedora@localhost ~]$ cd /etc
[fedora@localhost etc]$ cd /etc/
[fedora@localhost etc]$ echo "asdf" > ./login_notice.txt
-bash: ./login_notice.txt: Permission denied
[fedora@localhost etc]$ sudo echo "asdf" > ./login_notice.txt
-bash: ./login_notice.txt: Permission denied
[fedora@localhost etc]$ ls -l /
total 28
dr-xr-xr-x.   2 root root    6 Nov  3  2024 afs
lrwxrwxrwx.   1 root root    7 Nov  3  2024 bin -> usr/bin
dr-xr-xr-x.   5 root root 4096 Jul 21 09:47 boot
drwxr-xr-x.  20 root root 3420 Jul 21 09:47 dev
drwxr-xr-x. 131 root root 8192 Jul 22 10:24 etc
drwxr-xr-x.  10 root root  107 Jul 21 17:26 home
lrwxrwxrwx.   1 root root    7 Nov  3  2024 lib -> usr/lib
lrwxrwxrwx.   1 root root    9 Nov  3  2024 lib64 -> usr/lib64
drwxr-xr-x.   2 root root    6 Nov  3  2024 media
drwxr-xr-x.   3 root root   18 Jul 21 09:38 mnt
drwxr-xr-x.   2 root root    6 Nov  3  2024 opt
dr-xr-xr-x. 322 root root    0 Jul 21 09:47 proc
dr-xr-x---.   6 root root 4096 Jul 22 11:58 root
drwxr-xr-x.  47 root root 1240 Jul 22 10:14 run
lrwxrwxrwx.   1 root root    8 Nov  3  2024 sbin -> usr/sbin
drwxr-xr-x.   2 root root    6 Nov  3  2024 srv
dr-xr-xr-x.  13 root root    0 Jul 21 09:47 sys
drwxrwxrwt.  19 root root 4096 Jul 22 12:01 tmp
drwxr-xr-x.  12 root root  144 Jul 21 09:36 usr
drwxr-xr-x.  20 root root 4096 Jul 21 09:47 var
[fedora@localhost etc]$ cd /etc
[fedora@localhost etc]$ sudo touch aaa
[sudo] password for fedora: 
[fedora@localhost etc]$ ls -al
total 1332
drwxr-xr-x. 131 root root      8192 Jul 22 13:28 .
dr-xr-xr-x.  18 root root       235 Jul 21 09:36 ..
-rw-r--r--.   1 root root         0 Jul 22 13:28 aaa
drwxr-xr-x.   3 root root        28 Jul 21 09:37 accountsservice
-rw-r--r--.   1 root root        16 Jul 21 09:43 adjtime
-rw-r--r--.   1 root root      1529 Jun 23  2020 aliases
drwxr-xr-x.   3 root root        65 Jul 21 09:39 alsa
drwxr-xr-x.   2 root root      4096 Jul 21 09:39 alternatives
-rw-r--r--.   1 root root       541 May  2 18:15 anacrontab
-rw-r--r--.   1 root root       833 Feb 11  2023 appstream.conf
-rw-r--r--.   1 root root        55 May  3 04:25 asound.conf
-rw-r--r--.   1 root root         1 Oct 26  2022 at.deny
drwxr-x---.   4 root root       100 Jul 21 09:39 audit
drwxr-xr-x.   3 root root      4096 Jul 21 09:43 authselect
drwxr-xr-x.   4 root root        71 Jul 21 09:37 avahi
drwxr-xr-x.   2 root root       124 Jul 21 09:39 bash_completion.d
-rw-r--r--.   1 root root      2658 Apr  8  2024 bashrc
-rw-r--r--.   1 root root       535 Nov  5  2024 bindresvport.blacklist
drwxr-xr-x.   2 root root         6 Apr 24 15:27 binfmt.d
dr-xr-xr-x.   2 root root        23 Jul 21 09:37 bluetooth
-rw-r-----.   1 root brlapi      33 Jul 21 09:39 brlapi.key
drwxr-xr-x.   7 root root        84 Jul 21 09:39 brltty
-rw-r--r--.   1 root root     28974 May 26  2022 brltty.conf
drwxr-xr-x.   3 root root        36 Jul 21 09:39 chromium
-rw-r--r--.   1 root root      1370 Apr 27 19:59 chrony.conf
-rw-r-----.   1 root chrony     540 Apr 27 19:59 chrony.keys
drwxr-xr-x.   2 root root        26 Jul 21 09:37 cifs-utils
drwxr-xr-x.   4 root root        66 Jul 21 09:39 cockpit
drwxr-xr-x.   7 root root       154 Jul 21 09:38 containers
drwxr-xr-x.   2 root root        21 Jul 21 09:37 cron.d
drwxr-xr-x.   2 root root         6 May 11  2022 cron.daily
-rw-r--r--.   1 root root         0 May  2 18:15 cron.deny
drwxr-xr-x.   2 root root        22 Jul 21 09:37 cron.hourly
drwxr-xr-x.   2 root root         6 May 11  2022 cron.monthly
-rw-r--r--.   1 root root       451 May 11  2022 crontab
drwxr-xr-x.   2 root root         6 May 11  2022 cron.weekly
drwxr-xr-x.   6 root root        81 Jul 21 09:37 crypto-policies
-rw-------.   1 root root         0 Jul 21 09:35 crypttab
-rw-r--r--.   1 root root      1401 Apr  8  2024 csh.cshrc
-rw-r--r--.   1 root root      1112 Apr  8  2024 csh.login
drwxr-xr-x.   4 root lp        4096 Jul 22 10:08 cups
drwxr-xr-x.   2 root root        34 Jul 21 09:39 cupshelpers
drwxr-xr-x.   4 root root        78 Jul 21 09:37 dbus-1
drwxr-xr-x.   4 root root        31 Jul 21 09:37 dconf
drwxr-xr-x.   2 root root        52 Jul 21 09:38 debuginfod
drwxr-xr-x.   2 root root        33 Jul 21 09:43 default
drwxr-xr-x.   2 root root        40 Jul 21 09:38 depmod.d
drwxr-xr-x.   3 root root        24 Jul 21 09:39 dhcp
-rw-r--r--.   1 root root      4673 May  2 17:29 DIR_COLORS
-rw-r--r--.   1 root root      4755 May  2 17:29 DIR_COLORS.lightbgcolor
drwxr-xr-x.   8 root root       128 Jul 21 09:36 dnf
-rw-r--r--.   1 root dnsmasq  27839 Apr 24  2024 dnsmasq.conf
drwxr-xr-x.   2 root dnsmasq      6 Apr 24  2024 dnsmasq.d
-rw-r--r--.   1 root root       117 Apr 24 17:42 dracut.conf
drwxr-xr-x.   2 root root         6 Apr 24 17:42 dracut.conf.d
drwxr-xr-x.   3 root root        37 Jul 21 09:37 egl
-rw-r--r--.   1 root root      4760 May 16  2022 enscript.cfg
-rw-r--r--.   1 root root         0 Apr  8  2024 environment
-rw-r--r--.   1 root root      1362 Jun 23  2020 ethertypes
-rw-r--r--.   1 root root         0 Jun 23  2020 exports
lrwxrwxrwx.   1 root root        56 May 17 11:49 favicon.png -> /usr/share/icons/hicolor/16x16/apps/fedora-logo-icon.png
-rw-r--r--.   1 root root        66 Jun 23  2020 filesystems
drwxr-xr-x.   3 root root        18 Jul 21 09:39 firefox
drwxr-x---.   8 root root       149 Jul 21 09:39 firewalld
drwxr-xr-x.   3 root root        23 Jul 21 09:38 flatpak
drwxr-xr-x.   3 root root        38 Jul 21 09:37 fonts
drwxr-xr-x.   2 root root        28 Jul 21 09:39 foomatic
-rw-r--r--.   1 root root        20 Aug 20  2021 fprintd.conf
-rw-r--r--.   1 root root       579 Jul 21 09:35 fstab
-rw-r--r--.   1 root root        38 Nov  5  2024 fuse.conf
drwxr-xr-x.   4 root root        64 Jul 21 09:39 fwupd
drwxr-xr-x.   2 root root         6 Nov  6  2024 gcrypt
drwxr-xr-x.   6 root root       107 Jul 21 09:39 gdm
drwxr-xr-x.   2 root root        26 Jul 21 09:37 geoclue
drwxr-xr-x.   3 root root        26 Jul 21 09:37 glvnd
drwxr-xr-x.   2 root root         6 Oct 28  2023 gnupg
-rw-r--r--.   1 root root        94 May 16  2022 GREP_COLORS
drwxr-xr-x.   4 root root        40 Jul 21 09:37 groff
-rw-r--r--.   1 root root      1025 Jul 22 10:24 group
-rw-r--r--.   1 root root      1021 Jul 22 10:23 group-
lrwxrwxrwx.   1 root root        22 May 16 04:15 grub2.cfg -> ../boot/grub2/grub.cfg
drwx------.   2 root root      4096 Jul 21 09:42 grub.d
----------.   1 root root       821 Jul 22 10:24 gshadow
----------.   1 root root       817 Jul 22 10:23 gshadow-
drwxr-xr-x.   3 root root        20 Jul 21 09:37 gss
-rw-r--r--.   1 root root         9 Jun 23  2020 host.conf
-rw-r--r--.   1 root root         1 Jul 21 09:43 hostname
-rw-r--r--.   1 root root       158 Jun 23  2020 hosts
drwxr-xr-x.   2 root root        24 Jul 21 09:36 hp
-rw-r--r--.   1 root root       490 Apr 24 15:27 inittab
-rw-r--r--.   1 root root       943 Jun 23  2020 inputrc
drwxr-xr-x.   2 root root        25 Jul 21 09:37 iscsi
-rw-r--r--.   1 root root        20 May 17 12:08 issue
drwxr-xr-x.   2 root root        27 Jul 21 09:39 issue.d
-rw-r--r--.   1 root root        19 May 17 12:08 issue.net
drwxr-xr-x.   4 root root        33 Jul 21 09:38 kdump
-rw-r--r--.   1 root root      8979 Jul 21 09:38 kdump.conf
drwxr-xr-x.   3 root root        38 Jul 21 09:43 kernel
drwxr-xr-x.   3 root root        17 Jul 21 09:38 keys
drwxr-xr-x.   2 root root         6 Apr 18  2023 keyutils
-rw-r--r--.   1 root root       880 Apr 29 04:29 krb5.conf
drwxr-xr-x.   2 root root        83 Jul 21 09:39 krb5.conf.d
-rw-r--r--.   1 root root     39631 Jul 21 09:47 ld.so.cache
-rw-r--r--.   1 root root        28 May 14 02:39 ld.so.conf
drwxr-xr-x.   2 root root        39 Jul 21 09:39 ld.so.conf.d
-rw-r-----.   1 root root       191 May  4 13:57 libaudit.conf
drwxr-xr-x.   3 root root        20 Jul 21 09:37 libblockdev
drwxr-xr-x.   2 root root      4096 Jul 21 09:37 libibverbs.d
drwxr-xr-x.   2 root root        35 Jul 21 09:37 libnl
drwxr-xr-x.   2 root root         6 May 26  2022 libpaper.d
drwxr-xr-x.   6 root root        70 Jul 21 09:36 libreport
drwxr-xr-x.   2 root root        62 Jul 21 09:36 libssh
-rw-r--r--.   1 root root      2391 Mar  1  2021 libuser.conf
-rw-r--r--.   1 root root        19 Jul 21 09:43 locale.conf
lrwxrwxrwx.   1 root root        32 Jul 21 09:43 localtime -> ../usr/share/zoneinfo/Asia/Seoul
-rw-r--r--.   1 root root      7779 Apr 27 11:46 login.defs
-rw-r--r--.   1 root root       496 Jun  7  2020 logrotate.conf
drwxr-xr-x.   2 root root      4096 Jul 21 09:39 logrotate.d
drwxr-xr-x.   3 root root        43 Jul 21 09:38 lsm
drwxr-xr-x.   7 root root       115 Jul 21 09:37 lvm
-r--r--r--.   1 root root        33 Jul 21 09:37 machine-id
-rw-r--r--.   1 root root       111 Apr 16  2024 magic
-rw-r--r--.   1 root root       272 Apr 22  2020 mailcap
-rw-r--r--.   1 root root      5122 Apr 25 11:50 makedumpfile.conf.sample
-rw-r--r--.   1 root root      5235 Apr 15  2023 man_db.conf
drwxr-xr-x.   3 root root        41 Jul 21 09:39 mcelog
drwxr-xr-x.   3 root root        32 Jul 21 09:39 microcode_ctl
-rw-r--r--.   1 root root     67454 Apr 22  2020 mime.types
-rw-r--r--.   1 root root      1208 May  4 07:21 mke2fs.conf
drwxr-xr-x.   2 root root        54 Jul 21 09:39 modprobe.d
drwxr-xr-x.   2 root root         6 Apr 24 15:27 modules-load.d
-rw-r--r--.   1 root root         0 Jun 23  2020 motd
drwxr-xr-x.   2 root root        21 Jul 21 09:39 motd.d
lrwxrwxrwx.   1 root root        19 Jul 21 09:37 mtab -> ../proc/self/mounts
drwxr-xr-x.   2 root root         6 May  3 16:11 multipath
-rw-r--r--.   1 root root     10373 May  2 18:10 nanorc
-rw-r--r--.   1 root root       767 Nov  5  2024 netconfig
drwxr-xr-x.   7 root root       134 Jul 21 09:37 NetworkManager
-rw-r--r--.   1 root root        58 Jun 23  2020 networks
drwx------.   3 root root        66 Jul 21 09:37 nftables
lrwxrwxrwx.   1 root root        29 Jul 21 09:43 nsswitch.conf -> /etc/authselect/nsswitch.conf
-rw-r--r--.   1 root root      2108 May 14 02:41 nsswitch.conf.bak
drwxr-xr-x.   2 root root        57 Jul 21 09:39 nvme
drwxr-xr-x.   3 root root        36 Jul 21 09:37 openldap
drwxr-xr-x.   3 root root        20 Jul 21 09:39 opt
lrwxrwxrwx.   1 root root        21 May 17 12:08 os-release -> ../usr/lib/os-release
drwxr-xr-x.   3 root root        23 Jul 21 09:37 ostree
drwxr-xr-x.   2 root root        76 Jul 21 09:39 PackageKit
drwxr-xr-x.   2 root root      4096 Jul 21 09:43 pam.d
-rw-r--r--.   1 root root        68 May 26  2022 papersize
-rw-r--r--.   1 root root      2175 Jul 21 17:26 passwd
-rw-r--r--.   1 root root      2136 Jul 21 17:24 passwd-
-rw-r--r--.   1 root root      1362 May 15  2022 pbm2ppa.conf
-rw-r--r--.   1 root root      2872 May 18  2022 pinforc
drwxr-xr-x.   3 root root        21 Jul 21 09:37 pkcs11
drwxr-xr-x.   3 root root        27 Jul 21 09:37 pkgconfig
drwxr-xr-x.  10 root root       123 Jul 21 09:39 pki
drwxr-xr-x.   2 root root        28 Jul 21 09:37 plymouth
drwxr-xr-x.   5 root root        52 Jul 21 09:36 pm
-rw-r--r--.   1 root root      6300 May 15  2022 pnm2ppa.conf
drwxr-xr-x.   5 root root        72 Jul 21 09:37 polkit-1
drwxr-xr-x.   2 root root         6 May 16  2022 popt.d
-rw-r--r--.   1 root root       233 Jun 23  2020 printcap
-rw-r--r--.   1 root root      1899 Apr  8  2024 profile
drwxr-xr-x.   2 root root      4096 Jul 21 09:39 profile.d
-rw-r--r--.   1 root root      6568 Jun 23  2020 protocols
drwxr-xr-x.   2 root root        25 Jul 21 09:38 pulse
-rw-------.   1 root root         0 Jul 21 09:37 .pwd.lock
drwxr-xr-x.   3 root root        50 Jul 21 09:39 qemu-ga
drwxr-xr-x.   3 root root        27 Jul 21 09:39 ras
drwxr-xr-x.   3 root root        36 Jul 21 09:37 rc.d
lrwxrwxrwx.   1 root root        13 Apr 24 15:27 rc.local -> rc.d/rc.local
lrwxrwxrwx.   1 root root        13 May 17 12:08 redhat-release -> rocky-release
-rw-r--r--.   1 root root      1787 Apr 18  2023 request-key.conf
drwxr-xr-x.   2 root root         6 Apr 18  2023 request-key.d
-rw-r--r--.   1 root root        74 Jul 21 09:47 resolv.conf
-rw-r--r--.   1 root root        36 May 17 12:08 rocky-release
-rw-r--r--.   1 root root        42 May 17 12:08 rocky-release-upstream
-rw-r--r--.   1 root root      1634 Aug  2  2021 rpc
drwxr-xr-x.   2 root root         6 Apr 22 13:30 rpm
-rw-r--r--.   1 root root       458 May  4 11:05 rsyncd.conf
-rw-r--r--.   1 root root      3380 May  3 03:55 rsyslog.conf
drwxr-xr-x.   2 root root         6 May  3 03:58 rsyslog.d
drwxr-xr-x.   2 root root        35 Jul 21 09:37 rwtab.d
drwxr-xr-x.   2 root root        61 Jul 21 09:37 samba
drwxr-xr-x.   3 root root      4096 Jul 21 09:38 sane.d
drwxr-xr-x.   2 root root         6 Apr 15  2023 sasl2
drwxr-xr-x.   7 root root      4096 Jul 21 09:37 security
drwxr-xr-x.   3 root root        57 Jul 21 09:37 selinux
-rw-r--r--.   1 root root    692252 Jun 23  2020 services
-rw-r--r--.   1 root root       216 Apr  8  2024 sestatus.conf
drwxr-xr-x.   2 root root        33 Jul 21 09:39 setroubleshoot
drwxr-xr-x.   3 root root        21 Jul 21 09:37 sgml
----------.   1 root root      1243 Jul 21 17:26 shadow
----------.   1 root root      1216 Jul 21 17:24 shadow-
-rw-r--r--.   1 root root        44 Jun 23  2020 shells
drwxr-xr-x.   3 root root        78 Jul 21 09:36 skel
drwxr-xr-x.   3 root root        74 Jul 21 09:39 smartmontools
drwxr-xr-x.   6 root root        86 Jul 21 09:39 sos
drwxr-xr-x.   4 root root        56 Jul 21 09:38 speech-dispatcher
drwxr-xr-x.   4 root root      4096 Jul 21 09:47 ssh
drwxr-xr-x.   2 root root        77 Jul 21 09:37 ssl
drwx------.   4 sssd sssd        31 Jul 21 09:37 sssd
drwxr-xr-x.   2 root root         6 Nov  3  2024 statetab.d
-rw-r--r--.   1 root root       149 Jul 21 17:26 subgid
-rw-r--r--.   1 root root       131 Jul 21 17:24 subgid-
-rw-r--r--.   1 root root       149 Jul 21 17:26 subuid
-rw-r--r--.   1 root root       131 Jul 21 17:24 subuid-
-rw-r-----.   1 root root      3983 Feb 15  2024 sudo.conf
-r--r-----.   1 root root      4328 Feb 15  2024 sudoers
drwxr-x---.   2 root root         6 Feb 15  2024 sudoers.d
-rw-r-----.   1 root root      3181 Feb 15  2024 sudo-ldap.conf
drwxr-xr-x.   3 root root      4096 Jul 21 09:43 sysconfig
-rw-r--r--.   1 root root       449 Apr 24 15:27 sysctl.conf
drwxr-xr-x.   2 root root        28 Jul 21 09:37 sysctl.d
drwxr-xr-x.   4 root root       166 Jul 21 09:37 systemd
lrwxrwxrwx.   1 root root        13 May 17 12:08 system-release -> rocky-release
-rw-r--r--.   1 root root        29 May 17 12:08 system-release-cpe
drwxr-xr-x.   2 root root         6 Nov  6  2023 terminfo
drwxr-xr-x.   2 root root        22 Jul 21 09:39 tmpfiles.d
drwxr-xr-x.   3 root root        51 Jul 21 09:37 tpm2-tss
-rw-r--r--.   1 root root       375 Apr 24 15:49 trusted-key.key
drwxr-xr-x.   3 root root       176 Jul 21 09:39 tuned
drwxr-xr-x.   4 root root        68 Jul 21 09:47 udev
drwxr-xr-x.   2 root root        60 Jul 21 09:39 udisks2
-rw-r--r--.   1 root root       208 Jul 21 09:36 .updated
-rw-r--r--.   1 root root       624 May 16  2022 updatedb.conf
drwxr-xr-x.   2 root root        25 Jul 21 09:37 UPower
-rw-r--r--.   1 root root      1523 May 16  2022 usb_modeswitch.conf
-rw-r--r--.   1 root root        28 Jul 21 09:43 vconsole.conf
-rw-r--r--.   1 root root      4017 May 14 03:11 vimrc
-rw-r--r--.   1 root root      1184 May 14 03:11 virc
drwxr-xr-x.   4 root root      4096 Jul 21 09:38 vmware-tools
drwxr-xr-x.   5 root root        67 Jul 21 09:37 vulkan
-rw-r--r--.   1 root root      4925 Sep  4  2024 wgetrc
drwxr-xr-x.   6 root root        81 Jul 21 09:38 wireplumber
drwxr-xr-x.   2 root root        33 Jul 21 09:37 wpa_supplicant
drwxr-xr-x.   7 root root       121 Jul 21 09:39 X11
-rw-r--r--.   1 root root       817 May 26  2022 xattr.conf
drwxr-xr-x.   6 root root       125 Jul 21 09:37 xdg
drwxr-xr-x.   3 root root        36 Jul 21 09:37 xml
drwxr-xr-x.   2 root root        57 Jul 21 09:39 yum
lrwxrwxrwx.   1 root root        12 May  4 12:12 yum.conf -> dnf/dnf.conf
drwxr-xr-x.   2 root root        98 Jul 21 09:36 yum.repos.d
[fedora@localhost etc]$ ls -l aaa
-rw-r--r--. 1 root root 0 Jul 22 13:28 aaa
[fedora@localhost etc]$ sudo echo "asdf" > ./login_notice.txt
-bash: ./login_notice.txt: Permission denied
[fedora@localhost etc]$ su - root
Password: 
[root@localhost ~]# cd /etc/
[root@localhost etc]# echo "hello" > ./login_notice.txt
[root@localhost etc]# ls -l
total 1320
-rw-r--r--.  1 root root         0 Jul 22 13:28 aaa
drwxr-xr-x.  3 root root        28 Jul 21 09:37 accountsservice
-rw-r--r--.  1 root root        16 Jul 21 09:43 adjtime
-rw-r--r--.  1 root root      1529 Jun 23  2020 aliases
drwxr-xr-x.  3 root root        65 Jul 21 09:39 alsa
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 alternatives
-rw-r--r--.  1 root root       541 May  2 18:15 anacrontab
-rw-r--r--.  1 root root       833 Feb 11  2023 appstream.conf
-rw-r--r--.  1 root root        55 May  3 04:25 asound.conf
-rw-r--r--.  1 root root         1 Oct 26  2022 at.deny
drwxr-x---.  4 root root       100 Jul 21 09:39 audit
drwxr-xr-x.  3 root root      4096 Jul 21 09:43 authselect
drwxr-xr-x.  4 root root        71 Jul 21 09:37 avahi
drwxr-xr-x.  2 root root       124 Jul 21 09:39 bash_completion.d
-rw-r--r--.  1 root root      2658 Apr  8  2024 bashrc
-rw-r--r--.  1 root root       535 Nov  5  2024 bindresvport.blacklist
drwxr-xr-x.  2 root root         6 Apr 24 15:27 binfmt.d
dr-xr-xr-x.  2 root root        23 Jul 21 09:37 bluetooth
-rw-r-----.  1 root brlapi      33 Jul 21 09:39 brlapi.key
drwxr-xr-x.  7 root root        84 Jul 21 09:39 brltty
-rw-r--r--.  1 root root     28974 May 26  2022 brltty.conf
drwxr-xr-x.  3 root root        36 Jul 21 09:39 chromium
-rw-r--r--.  1 root root      1370 Apr 27 19:59 chrony.conf
-rw-r-----.  1 root chrony     540 Apr 27 19:59 chrony.keys
drwxr-xr-x.  2 root root        26 Jul 21 09:37 cifs-utils
drwxr-xr-x.  4 root root        66 Jul 21 09:39 cockpit
drwxr-xr-x.  7 root root       154 Jul 21 09:38 containers
drwxr-xr-x.  2 root root        21 Jul 21 09:37 cron.d
drwxr-xr-x.  2 root root         6 May 11  2022 cron.daily
-rw-r--r--.  1 root root         0 May  2 18:15 cron.deny
drwxr-xr-x.  2 root root        22 Jul 21 09:37 cron.hourly
drwxr-xr-x.  2 root root         6 May 11  2022 cron.monthly
-rw-r--r--.  1 root root       451 May 11  2022 crontab
drwxr-xr-x.  2 root root         6 May 11  2022 cron.weekly
drwxr-xr-x.  6 root root        81 Jul 21 09:37 crypto-policies
-rw-------.  1 root root         0 Jul 21 09:35 crypttab
-rw-r--r--.  1 root root      1401 Apr  8  2024 csh.cshrc
-rw-r--r--.  1 root root      1112 Apr  8  2024 csh.login
drwxr-xr-x.  4 root lp        4096 Jul 22 10:08 cups
drwxr-xr-x.  2 root root        34 Jul 21 09:39 cupshelpers
drwxr-xr-x.  4 root root        78 Jul 21 09:37 dbus-1
drwxr-xr-x.  4 root root        31 Jul 21 09:37 dconf
drwxr-xr-x.  2 root root        52 Jul 21 09:38 debuginfod
drwxr-xr-x.  2 root root        33 Jul 21 09:43 default
drwxr-xr-x.  2 root root        40 Jul 21 09:38 depmod.d
drwxr-xr-x.  3 root root        24 Jul 21 09:39 dhcp
-rw-r--r--.  1 root root      4673 May  2 17:29 DIR_COLORS
-rw-r--r--.  1 root root      4755 May  2 17:29 DIR_COLORS.lightbgcolor
drwxr-xr-x.  8 root root       128 Jul 21 09:36 dnf
-rw-r--r--.  1 root dnsmasq  27839 Apr 24  2024 dnsmasq.conf
drwxr-xr-x.  2 root dnsmasq      6 Apr 24  2024 dnsmasq.d
-rw-r--r--.  1 root root       117 Apr 24 17:42 dracut.conf
drwxr-xr-x.  2 root root         6 Apr 24 17:42 dracut.conf.d
drwxr-xr-x.  3 root root        37 Jul 21 09:37 egl
-rw-r--r--.  1 root root      4760 May 16  2022 enscript.cfg
-rw-r--r--.  1 root root         0 Apr  8  2024 environment
-rw-r--r--.  1 root root      1362 Jun 23  2020 ethertypes
-rw-r--r--.  1 root root         0 Jun 23  2020 exports
lrwxrwxrwx.  1 root root        56 May 17 11:49 favicon.png -> /usr/share/icons/hicolor/16x16/apps/fedora-logo-icon.png
-rw-r--r--.  1 root root        66 Jun 23  2020 filesystems
drwxr-xr-x.  3 root root        18 Jul 21 09:39 firefox
drwxr-x---.  8 root root       149 Jul 21 09:39 firewalld
drwxr-xr-x.  3 root root        23 Jul 21 09:38 flatpak
drwxr-xr-x.  3 root root        38 Jul 21 09:37 fonts
drwxr-xr-x.  2 root root        28 Jul 21 09:39 foomatic
-rw-r--r--.  1 root root        20 Aug 20  2021 fprintd.conf
-rw-r--r--.  1 root root       579 Jul 21 09:35 fstab
-rw-r--r--.  1 root root        38 Nov  5  2024 fuse.conf
drwxr-xr-x.  4 root root        64 Jul 21 09:39 fwupd
drwxr-xr-x.  2 root root         6 Nov  6  2024 gcrypt
drwxr-xr-x.  6 root root       107 Jul 21 09:39 gdm
drwxr-xr-x.  2 root root        26 Jul 21 09:37 geoclue
drwxr-xr-x.  3 root root        26 Jul 21 09:37 glvnd
drwxr-xr-x.  2 root root         6 Oct 28  2023 gnupg
-rw-r--r--.  1 root root        94 May 16  2022 GREP_COLORS
drwxr-xr-x.  4 root root        40 Jul 21 09:37 groff
-rw-r--r--.  1 root root      1025 Jul 22 10:24 group
-rw-r--r--.  1 root root      1021 Jul 22 10:23 group-
lrwxrwxrwx.  1 root root        22 May 16 04:15 grub2.cfg -> ../boot/grub2/grub.cfg
drwx------.  2 root root      4096 Jul 21 09:42 grub.d
----------.  1 root root       821 Jul 22 10:24 gshadow
----------.  1 root root       817 Jul 22 10:23 gshadow-
drwxr-xr-x.  3 root root        20 Jul 21 09:37 gss
-rw-r--r--.  1 root root         9 Jun 23  2020 host.conf
-rw-r--r--.  1 root root         1 Jul 21 09:43 hostname
-rw-r--r--.  1 root root       158 Jun 23  2020 hosts
drwxr-xr-x.  2 root root        24 Jul 21 09:36 hp
-rw-r--r--.  1 root root       490 Apr 24 15:27 inittab
-rw-r--r--.  1 root root       943 Jun 23  2020 inputrc
drwxr-xr-x.  2 root root        25 Jul 21 09:37 iscsi
-rw-r--r--.  1 root root        20 May 17 12:08 issue
drwxr-xr-x.  2 root root        27 Jul 21 09:39 issue.d
-rw-r--r--.  1 root root        19 May 17 12:08 issue.net
drwxr-xr-x.  4 root root        33 Jul 21 09:38 kdump
-rw-r--r--.  1 root root      8979 Jul 21 09:38 kdump.conf
drwxr-xr-x.  3 root root        38 Jul 21 09:43 kernel
drwxr-xr-x.  3 root root        17 Jul 21 09:38 keys
drwxr-xr-x.  2 root root         6 Apr 18  2023 keyutils
-rw-r--r--.  1 root root       880 Apr 29 04:29 krb5.conf
drwxr-xr-x.  2 root root        83 Jul 21 09:39 krb5.conf.d
-rw-r--r--.  1 root root     39631 Jul 21 09:47 ld.so.cache
-rw-r--r--.  1 root root        28 May 14 02:39 ld.so.conf
drwxr-xr-x.  2 root root        39 Jul 21 09:39 ld.so.conf.d
-rw-r-----.  1 root root       191 May  4 13:57 libaudit.conf
drwxr-xr-x.  3 root root        20 Jul 21 09:37 libblockdev
drwxr-xr-x.  2 root root      4096 Jul 21 09:37 libibverbs.d
drwxr-xr-x.  2 root root        35 Jul 21 09:37 libnl
drwxr-xr-x.  2 root root         6 May 26  2022 libpaper.d
drwxr-xr-x.  6 root root        70 Jul 21 09:36 libreport
drwxr-xr-x.  2 root root        62 Jul 21 09:36 libssh
-rw-r--r--.  1 root root      2391 Mar  1  2021 libuser.conf
-rw-r--r--.  1 root root        19 Jul 21 09:43 locale.conf
lrwxrwxrwx.  1 root root        32 Jul 21 09:43 localtime -> ../usr/share/zoneinfo/Asia/Seoul
-rw-r--r--.  1 root root      7779 Apr 27 11:46 login.defs
-rw-r--r--.  1 root root         6 Jul 22 13:30 login_notice.txt
-rw-r--r--.  1 root root       496 Jun  7  2020 logrotate.conf
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 logrotate.d
drwxr-xr-x.  3 root root        43 Jul 21 09:38 lsm
drwxr-xr-x.  7 root root       115 Jul 21 09:37 lvm
-r--r--r--.  1 root root        33 Jul 21 09:37 machine-id
-rw-r--r--.  1 root root       111 Apr 16  2024 magic
-rw-r--r--.  1 root root       272 Apr 22  2020 mailcap
-rw-r--r--.  1 root root      5122 Apr 25 11:50 makedumpfile.conf.sample
-rw-r--r--.  1 root root      5235 Apr 15  2023 man_db.conf
drwxr-xr-x.  3 root root        41 Jul 21 09:39 mcelog
drwxr-xr-x.  3 root root        32 Jul 21 09:39 microcode_ctl
-rw-r--r--.  1 root root     67454 Apr 22  2020 mime.types
-rw-r--r--.  1 root root      1208 May  4 07:21 mke2fs.conf
drwxr-xr-x.  2 root root        54 Jul 21 09:39 modprobe.d
drwxr-xr-x.  2 root root         6 Apr 24 15:27 modules-load.d
-rw-r--r--.  1 root root         0 Jun 23  2020 motd
drwxr-xr-x.  2 root root        21 Jul 21 09:39 motd.d
lrwxrwxrwx.  1 root root        19 Jul 21 09:37 mtab -> ../proc/self/mounts
drwxr-xr-x.  2 root root         6 May  3 16:11 multipath
-rw-r--r--.  1 root root     10373 May  2 18:10 nanorc
-rw-r--r--.  1 root root       767 Nov  5  2024 netconfig
drwxr-xr-x.  7 root root       134 Jul 21 09:37 NetworkManager
-rw-r--r--.  1 root root        58 Jun 23  2020 networks
drwx------.  3 root root        66 Jul 21 09:37 nftables
lrwxrwxrwx.  1 root root        29 Jul 21 09:43 nsswitch.conf -> /etc/authselect/nsswitch.conf
-rw-r--r--.  1 root root      2108 May 14 02:41 nsswitch.conf.bak
drwxr-xr-x.  2 root root        57 Jul 21 09:39 nvme
drwxr-xr-x.  3 root root        36 Jul 21 09:37 openldap
drwxr-xr-x.  3 root root        20 Jul 21 09:39 opt
lrwxrwxrwx.  1 root root        21 May 17 12:08 os-release -> ../usr/lib/os-release
drwxr-xr-x.  3 root root        23 Jul 21 09:37 ostree
drwxr-xr-x.  2 root root        76 Jul 21 09:39 PackageKit
drwxr-xr-x.  2 root root      4096 Jul 21 09:43 pam.d
-rw-r--r--.  1 root root        68 May 26  2022 papersize
-rw-r--r--.  1 root root      2175 Jul 21 17:26 passwd
-rw-r--r--.  1 root root      2136 Jul 21 17:24 passwd-
-rw-r--r--.  1 root root      1362 May 15  2022 pbm2ppa.conf
-rw-r--r--.  1 root root      2872 May 18  2022 pinforc
drwxr-xr-x.  3 root root        21 Jul 21 09:37 pkcs11
drwxr-xr-x.  3 root root        27 Jul 21 09:37 pkgconfig
drwxr-xr-x. 10 root root       123 Jul 21 09:39 pki
drwxr-xr-x.  2 root root        28 Jul 21 09:37 plymouth
drwxr-xr-x.  5 root root        52 Jul 21 09:36 pm
-rw-r--r--.  1 root root      6300 May 15  2022 pnm2ppa.conf
drwxr-xr-x.  5 root root        72 Jul 21 09:37 polkit-1
drwxr-xr-x.  2 root root         6 May 16  2022 popt.d
-rw-r--r--.  1 root root       233 Jun 23  2020 printcap
-rw-r--r--.  1 root root      1899 Apr  8  2024 profile
drwxr-xr-x.  2 root root      4096 Jul 21 09:39 profile.d
-rw-r--r--.  1 root root      6568 Jun 23  2020 protocols
drwxr-xr-x.  2 root root        25 Jul 21 09:38 pulse
drwxr-xr-x.  3 root root        50 Jul 21 09:39 qemu-ga
drwxr-xr-x.  3 root root        27 Jul 21 09:39 ras
drwxr-xr-x.  3 root root        36 Jul 21 09:37 rc.d
lrwxrwxrwx.  1 root root        13 Apr 24 15:27 rc.local -> rc.d/rc.local
lrwxrwxrwx.  1 root root        13 May 17 12:08 redhat-release -> rocky-release
-rw-r--r--.  1 root root      1787 Apr 18  2023 request-key.conf
drwxr-xr-x.  2 root root         6 Apr 18  2023 request-key.d
-rw-r--r--.  1 root root        74 Jul 21 09:47 resolv.conf
-rw-r--r--.  1 root root        36 May 17 12:08 rocky-release
-rw-r--r--.  1 root root        42 May 17 12:08 rocky-release-upstream
-rw-r--r--.  1 root root      1634 Aug  2  2021 rpc
drwxr-xr-x.  2 root root         6 Apr 22 13:30 rpm
-rw-r--r--.  1 root root       458 May  4 11:05 rsyncd.conf
-rw-r--r--.  1 root root      3380 May  3 03:55 rsyslog.conf
drwxr-xr-x.  2 root root         6 May  3 03:58 rsyslog.d
drwxr-xr-x.  2 root root        35 Jul 21 09:37 rwtab.d
drwxr-xr-x.  2 root root        61 Jul 21 09:37 samba
drwxr-xr-x.  3 root root      4096 Jul 21 09:38 sane.d
drwxr-xr-x.  2 root root         6 Apr 15  2023 sasl2
drwxr-xr-x.  7 root root      4096 Jul 21 09:37 security
drwxr-xr-x.  3 root root        57 Jul 21 09:37 selinux
-rw-r--r--.  1 root root    692252 Jun 23  2020 services
-rw-r--r--.  1 root root       216 Apr  8  2024 sestatus.conf
drwxr-xr-x.  2 root root        33 Jul 21 09:39 setroubleshoot
drwxr-xr-x.  3 root root        21 Jul 21 09:37 sgml
----------.  1 root root      1243 Jul 21 17:26 shadow
----------.  1 root root      1216 Jul 21 17:24 shadow-
-rw-r--r--.  1 root root        44 Jun 23  2020 shells
drwxr-xr-x.  3 root root        78 Jul 21 09:36 skel
drwxr-xr-x.  3 root root        74 Jul 21 09:39 smartmontools
drwxr-xr-x.  6 root root        86 Jul 21 09:39 sos
drwxr-xr-x.  4 root root        56 Jul 21 09:38 speech-dispatcher
drwxr-xr-x.  4 root root      4096 Jul 21 09:47 ssh
drwxr-xr-x.  2 root root        77 Jul 21 09:37 ssl
drwx------.  4 sssd sssd        31 Jul 21 09:37 sssd
drwxr-xr-x.  2 root root         6 Nov  3  2024 statetab.d
-rw-r--r--.  1 root root       149 Jul 21 17:26 subgid
-rw-r--r--.  1 root root       131 Jul 21 17:24 subgid-
-rw-r--r--.  1 root root       149 Jul 21 17:26 subuid
-rw-r--r--.  1 root root       131 Jul 21 17:24 subuid-
-rw-r-----.  1 root root      3983 Feb 15  2024 sudo.conf
-r--r-----.  1 root root      4328 Feb 15  2024 sudoers
drwxr-x---.  2 root root         6 Feb 15  2024 sudoers.d
-rw-r-----.  1 root root      3181 Feb 15  2024 sudo-ldap.conf
drwxr-xr-x.  3 root root      4096 Jul 21 09:43 sysconfig
-rw-r--r--.  1 root root       449 Apr 24 15:27 sysctl.conf
drwxr-xr-x.  2 root root        28 Jul 21 09:37 sysctl.d
drwxr-xr-x.  4 root root       166 Jul 21 09:37 systemd
lrwxrwxrwx.  1 root root        13 May 17 12:08 system-release -> rocky-release
-rw-r--r--.  1 root root        29 May 17 12:08 system-release-cpe
drwxr-xr-x.  2 root root         6 Nov  6  2023 terminfo
drwxr-xr-x.  2 root root        22 Jul 21 09:39 tmpfiles.d
drwxr-xr-x.  3 root root        51 Jul 21 09:37 tpm2-tss
-rw-r--r--.  1 root root       375 Apr 24 15:49 trusted-key.key
drwxr-xr-x.  3 root root       176 Jul 21 09:39 tuned
drwxr-xr-x.  4 root root        68 Jul 21 09:47 udev
drwxr-xr-x.  2 root root        60 Jul 21 09:39 udisks2
-rw-r--r--.  1 root root       624 May 16  2022 updatedb.conf
drwxr-xr-x.  2 root root        25 Jul 21 09:37 UPower
-rw-r--r--.  1 root root      1523 May 16  2022 usb_modeswitch.conf
-rw-r--r--.  1 root root        28 Jul 21 09:43 vconsole.conf
-rw-r--r--.  1 root root      4017 May 14 03:11 vimrc
-rw-r--r--.  1 root root      1184 May 14 03:11 virc
drwxr-xr-x.  4 root root      4096 Jul 21 09:38 vmware-tools
drwxr-xr-x.  5 root root        67 Jul 21 09:37 vulkan
-rw-r--r--.  1 root root      4925 Sep  4  2024 wgetrc
drwxr-xr-x.  6 root root        81 Jul 21 09:38 wireplumber
drwxr-xr-x.  2 root root        33 Jul 21 09:37 wpa_supplicant
drwxr-xr-x.  7 root root       121 Jul 21 09:39 X11
-rw-r--r--.  1 root root       817 May 26  2022 xattr.conf
drwxr-xr-x.  6 root root       125 Jul 21 09:37 xdg
drwxr-xr-x.  3 root root        36 Jul 21 09:37 xml
drwxr-xr-x.  2 root root        57 Jul 21 09:39 yum
lrwxrwxrwx.  1 root root        12 May  4 12:12 yum.conf -> dnf/dnf.conf
drwxr-xr-x.  2 root root        98 Jul 21 09:36 yum.repos.d
[root@localhost etc]# ls -l login
login.defs        login_notice.txt  
[root@localhost etc]# ls -l login_notice.txt 
-rw-r--r--. 1 root root 6 Jul 22 13:30 login_notice.txt
[root@localhost etc]# nano /etc/profile




```