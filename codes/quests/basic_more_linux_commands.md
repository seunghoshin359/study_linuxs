``` shell
[fedora@localhost ~]$ pwd
/home/fedora
[fedora@localhost ~]$ cd /home
[fedora@localhost home]$ cd /
[fedora@localhost /]$ cd /home
[fedora@localhost home]$ ls
fedora
[fedora@localhost home]$ ls -lR
.:
total 4
drwx------. 14 fedora fedora 4096 Jul 16 10:53 fedora

./fedora:
total 0
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Desktop
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Documents
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Downloads
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Music
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Pictures
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Public
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Templates
drwxr-xr-x. 2 fedora fedora 6 Jul 16 10:53 Videos

./fedora/Desktop:
total 0

./fedora/Documents:
total 0

./fedora/Downloads:
total 0

./fedora/Music:
total 0

./fedora/Pictures:
total 0

./fedora/Public:
total 0

./fedora/Templates:
total 0

./fedora/Videos:
total 0
[fedora@localhost home]$ ls -al
total 4
drwxr-xr-x.  3 root   root     20 Jul 16 10:53 .
dr-xr-xr-x. 18 root   root    235 Jul 16 10:16 ..
drwx------. 14 fedora fedora 4096 Jul 16 10:53 fedora
[fedora@localhost home]$ cd /etc
[fedora@localhost etc]$ ls
accountsservice          gshadow-                  profile
adjtime                  gss                       profile.d
aliases                  host.conf                 protocols
alsa                     hostname                  pulse
alternatives             hosts                     qemu-ga
anacrontab               hp                        ras
appstream.conf           inittab                   rc.d
asound.conf              inputrc                   rc.local
at.deny                  iscsi                     redhat-release
audit                    issue                     request-key.conf
authselect               issue.d                   request-key.d
avahi                    issue.net                 resolv.conf
bash_completion.d        kdump                     rocky-release
bashrc                   kdump.conf                rocky-release-upstream
bindresvport.blacklist   kernel                    rpc
binfmt.d                 keys                      rpm
bluetooth                keyutils                  rsyncd.conf
brlapi.key               krb5.conf                 rsyslog.conf
brltty                   krb5.conf.d               rsyslog.d
brltty.conf              ld.so.cache               rwtab.d
chromium                 ld.so.conf                samba
chrony.conf              ld.so.conf.d              sane.d
chrony.keys              libaudit.conf             sasl2
cifs-utils               libblockdev               security
cockpit                  libibverbs.d              selinux
containers               libnl                     services
cron.d                   libpaper.d                sestatus.conf
cron.daily               libreport                 setroubleshoot
cron.deny                libssh                    sgml
cron.hourly              libuser.conf              shadow
cron.monthly             locale.conf               shadow-
crontab                  localtime                 shells
cron.weekly              login.defs                skel
crypto-policies          logrotate.conf            smartmontools
crypttab                 logrotate.d               sos
csh.cshrc                lsm                       speech-dispatcher
csh.login                lvm                       ssh
cups                     machine-id                ssl
cupshelpers              magic                     sssd
dbus-1                   mailcap                   statetab.d
dconf                    makedumpfile.conf.sample  subgid
debuginfod               man_db.conf               subgid-
default                  mcelog                    subuid
depmod.d                 microcode_ctl             subuid-
dhcp                     mime.types                sudo.conf
DIR_COLORS               mke2fs.conf               sudoers
DIR_COLORS.lightbgcolor  modprobe.d                sudoers.d
dnf                      modules-load.d            sudo-ldap.conf
dnsmasq.conf             motd                      sysconfig
dnsmasq.d                motd.d                    sysctl.conf
dracut.conf              mtab                      sysctl.d
dracut.conf.d            multipath                 systemd
egl                      nanorc                    system-release
enscript.cfg             netconfig                 system-release-cpe
environment              NetworkManager            terminfo
ethertypes               networks                  tmpfiles.d
exports                  nftables                  tpm2-tss
favicon.png              nsswitch.conf             trusted-key.key
filesystems              nsswitch.conf.bak         tuned
firefox                  nvme                      udev
firewalld                openldap                  udisks2
flatpak                  opt                       updatedb.conf
fonts                    os-release                UPower
foomatic                 ostree                    usb_modeswitch.conf
fprintd.conf             PackageKit                vconsole.conf
fstab                    pam.d                     vimrc
fuse.conf                papersize                 virc
fwupd                    passwd                    vmware-tools
gcrypt                   passwd-                   vulkan
gdm                      pbm2ppa.conf              wgetrc
geoclue                  pinforc                   wireplumber
glvnd                    pkcs11                    wpa_supplicant
gnupg                    pkgconfig                 X11
GREP_COLORS              pki                       xattr.conf
groff                    plymouth                  xdg
group                    pm                        xml
group-                   pnm2ppa.conf              yum
grub2.cfg                polkit-1                  yum.conf
grub.d                   popt.d                    yum.repos.d
gshadow                  printcap
[fedora@localhost etc]$ cd /quests
bash: cd: /quests: No such file or directory
[fedora@localhost etc]$ cd /home/fedora
[fedora@localhost ~]$ mkdir practice/
[fedora@localhost ~]$ cd practice
[fedora@localhost practice]$ mkdir -p documents/repors/ls documents/notes
[fedora@localhost practice]$ mkdir -p images/ backup/
[fedora@localhost practice]$ touch documents/readme.txt | echo "Hello Linux" > readme.txt
[fedora@localhost practice]$ touch notes/memo.txt | echo "Linux practicing" > readme.txt
touch: cannot touch 'notes/memo.txt': No such file or directory
[fedora@localhost practice]$ touch notes/memo.txt | echo "Linux practicing" > memo.txt
touch: cannot touch 'notes/memo.txt': No such file or directory
[fedora@localhost practice]$ touch /documents/notes/memo.txt | echo "Linux practicing" > memo.txt
touch: cannot touch '/documents/notes/memo.txt': No such file or directory
[fedora@localhost practice]$ cd documents/notes/
[fedora@localhost notes]$ echo "Linux praticing" > memo.txt
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ cat readme.txt
[fedora@localhost documents]$ cd ..
[fedora@localhost practice]$ cd ..
[fedora@localhost ~]$ rm -rf practice/
[fedora@localhost ~]$ mkdir -p practice/document/reports/ls
[fedora@localhost ~]$ mkdir practice/documents/notes/
mkdir: cannot create directory ‘practice/documents/notes/’: No such file or directory
[fedora@localhost ~]$ mkdir -p practice/documents/notes/
[fedora@localhost ~]$ cd practice/
[fedora@localhost practice]$ mkdir -p images/ backup/
[fedora@localhost practice]$ touch practice/documents/readme.txt | echo "Hello linux" > readme.txt
touch: cannot touch 'practice/documents/readme.txt': No such file or directory
[fedora@localhost practice]$ cd practice/documents/ | echo "Hello linux" > readme.txt
bash: cd: practice/documents/: No such file or directory
[fedora@localhost practice]$ cd practice/documents | echo "Hello linux" > readme.txt
bash: cd: practice/documents: No such file or directory
[fedora@localhost practice]$ ls
backup  document  documents  images  readme.txt
[fedora@localhost practice]$ tree
.
├── backup
├── document
│   └── reports
│       └── ls
├── documents
│   └── notes
├── images
└── readme.txt

7 directories, 1 file
[fedora@localhost practice]$ rm -rf readme.txt
[fedora@localhost practice]$ cd documents
[fedora@localhost documents]$ touch readme.txt
[fedora@localhost documents]$ echo "HelloLinux" > readme.txt
[fedora@localhost documents]$ cd practice/notes/
bash: cd: practice/notes/: No such file or directory
[fedora@localhost documents]$ cd ..
[fedora@localhost practice]$ cd notes/
bash: cd: notes/: No such file or directory
[fedora@localhost practice]$ cd documents/notes
[fedora@localhost notes]$ touch memo.txt | echo "linuxpracticing" > memo.txt
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ tree
.
├── notes
│   └── memo.txt
└── readme.txt

1 directory, 2 files
[fedora@localhost documents]$ cat readme.txt
HelloLinux
[fedora@localhost documents]$ cd notes/
[fedora@localhost notes]$ cat memo.txt
linuxpracticing
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ cp reame.txt /home/fedora/practice/backup/
cp: cannot stat 'reame.txt': No such file or directory
[fedora@localhost documents]$ cp readme.txt /home/fedora/practice/backup/
[fedora@localhost documents]$ cd ..
[fedora@localhost practice]$ cp -r documents/ /home/fedora/practice/backup/
[fedora@localhost practice]$ tree
.
├── backup
│   ├── documents
│   │   ├── notes
│   │   │   └── memo.txt
│   │   └── readme.txt
│   └── readme.txt
├── document
│   └── reports
│       └── ls
├── documents
│   ├── notes
│   │   └── memo.txt
│   └── readme.txt
└── images

9 directories, 5 files
[fedora@localhost practice]$ cd documents/notes/
[fedora@localhost notes]$ mv memo.txt /home/fedora/practice/documents/
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ cd ..
[fedora@localhost practice]$ mv images/ practice/media/
mv: cannot move 'images/' to 'practice/media/': No such file or directory
[fedora@localhost practice]$ mv images/ media/
[fedora@localhost practice]$ cd documents/
[fedora@localhost documents]$ mv reame.txt introduction.txt
mv: cannot stat 'reame.txt': No such file or directory
[fedora@localhost documents]$ mv readme.txt introduction.txt
[fedora@localhost documents]$ cd notes/
[fedora@localhost notes]$ mv memo.txt study_notes.txt
mv: cannot stat 'memo.txt': No such file or directory
[fedora@localhost notes]$ cd notes
bash: cd: notes: No such file or directory
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ cd notes
[fedora@localhost notes]$ mv memo.txt study_notes.txt
mv: cannot stat 'memo.txt': No such file or directory
[fedora@localhost notes]$ ls
[fedora@localhost notes]$ cd ..
[fedora@localhost documents]$ cd ..
[fedora@localhost practice]$ tree
.
├── backup
│   ├── documents
│   │   ├── notes
│   │   │   └── memo.txt
│   │   └── readme.txt
│   └── readme.txt
├── document
│   └── reports
│       └── ls
├── documents
│   ├── introduction.txt
│   ├── memo.txt
│   └── notes
└── media

9 directories, 5 files
[fedora@localhost practice]$ cd documents
[fedora@localhost documents]$ mv memo.txt study_notes.txt
[fedora@localhost documents]$ mkdir -p /home/fedora/my_project/
[fedora@localhost documents]$ cd my_project/
bash: cd: my_project/: No such file or directory
[fedora@localhost documents]$ cd /home/fedora/my_project/
[fedora@localhost my_project]$ mkdir src/ docs/ tests/ config/
[fedora@localhost my_project]$ touch src/main.py && echo "main python file" > main.py
[fedora@localhost my_project]$ touch docs/README.md && echo "My Project Documentation" > README.md
[fedora@localhost my_project]$ touch config/settings.conf && echo "configuration file" > settings.conf
[fedora@localhost my_project]$ cd ..
[fedora@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
├── Music
├── my_project
│   ├── config
│   │   └── settings.conf
│   ├── docs
│   │   └── README.md
│   ├── main.py
│   ├── README.md
│   ├── settings.conf
│   ├── src
│   │   └── main.py
│   └── tests
├── Pictures
├── practice
│   ├── backup
│   │   ├── documents
│   │   │   ├── notes
│   │   │   │   └── memo.txt
│   │   │   └── readme.txt
│   │   └── readme.txt
│   ├── document
│   │   └── reports
│   │       └── ls
│   ├── documents
│   │   ├── introduction.txt
│   │   ├── notes
│   │   └── study_notes.txt
│   └── media
├── Public
├── Templates
└── Videos

23 directories, 11 files
[fedora@localhost ~]$ cp my_project/ my_project_backup/
cp: -r not specified; omitting directory 'my_project/'
[fedora@localhost ~]$ cd my_project/
[fedora@localhost my_project]$ mkdir backup/
[fedora@localhost my_project]$ cd ..
[fedora@localhost ~]$ cp my_project/ my_project/backup/
cp: -r not specified; omitting directory 'my_project/'
[fedora@localhost ~]$ cp -r my_project/ my_project/backup/
cp: cannot copy a directory, 'my_project/', into itself, 'my_project/backup/my_project'
[fedora@localhost ~]$ cp -r my_project my_project/backup/
cp: cannot copy a directory, 'my_project', into itself, 'my_project/backup/my_project'
[fedora@localhost ~]$ cd /home/fedora
[fedora@localhost ~]$ ls
Desktop    Downloads  my_project  practice  Templates
Documents  Music      Pictures    Public    Videos
[fedora@localhost ~]$ mkdir my_project_backup/
[fedora@localhost ~]$ cp -r my_project/* my_project_backup/
[fedora@localhost ~]$ cd my_project/src/
[fedora@localhost src]$ mv main.py app.py
[fedora@localhost src]$ cd ..
[fedora@localhost my_project]$ cd docs/
[fedora@localhost docs]$ mv README.md /home/fedora/my_project/

```
