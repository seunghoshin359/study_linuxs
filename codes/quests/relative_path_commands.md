``` shell
[fedora@localhost lib]$ cd ..
[fedora@localhost sibling-project]$ cd ..
[fedora@localhost Downloads]$ cd ..
[fedora@localhost ~]$ cd ~
[fedora@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
│   ├── project
│   │   ├── docs
│   │   ├── src
│   │   └── tests
│   └── sibling-project
│       ├── app
│       ├── config
│       └── lib
├── Music
├── my_project
│   ├── backup
│   │   └── my_project
│   │       ├── backup
│   │       │   └── my_project
│   │       │       ├── backup
│   │       │       └── src
│   │       │           └── main.py
│   │       └── src
│   │           └── main.py
│   ├── config
│   │   └── settings.conf
│   ├── docs
│   ├── main.py
│   ├── README.md
│   ├── settings.conf
│   ├── src
│   │   └── app.py
│   └── tests
├── my_project_backup
│   ├── backup
│   │   └── my_project
│   │       ├── backup
│   │       │   └── my_project
│   │       │       ├── backup
│   │       │       └── src
│   │       │           └── main.py
│   │       └── src
│   │           └── main.py
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
├── temp
├── Templates
└── Videos

51 directories, 20 files
[fedora@localhost ~]$ rm -rf ./Downloads/{project,sibling-project}
[fedora@localhost ~]$ mkdir -p ~/practice/project/{src,docs,tests,config}
[fedora@localhost ~]$ mkdir -p ~/practice/project/src/{main,utils}
[fedora@localhost ~]$ mkdir -p ~/practice/project/docs/{user,dev}
[fedora@localhost ~]$ mkdir -p ~/practice/project/tests/unit
[fedora@localhost ~]$ touch ~/practice/project/README.md
[fedora@localhost ~]$ touch ~/practice/project/src/main/app.py
[fedora@localhost ~]$ touch ~/practice/project/src/utils/helper.py
[fedora@localhost ~]$ touch ~/practice/project/docs/user/manual.txt
[fedora@localhost ~]$ touch ~/practice/project/docs/dev/api.md
[fedora@localhost ~]$ touch ~/practice/project/tests/test_main.py
[fedora@localhost ~]$ touch ~/practice/project/config/settings.conf
[fedora@localhost ~]$ tree
.
├── Desktop
├── Documents
├── Downloads
├── Music
├── my_project
│   ├── backup
│   │   └── my_project
│   │       ├── backup
│   │       │   └── my_project
│   │       │       ├── backup
│   │       │       └── src
│   │       │           └── main.py
│   │       └── src
│   │           └── main.py
│   ├── config
│   │   └── settings.conf
│   ├── docs
│   ├── main.py
│   ├── README.md
│   ├── settings.conf
│   ├── src
│   │   └── app.py
│   └── tests
├── my_project_backup
│   ├── backup
│   │   └── my_project
│   │       ├── backup
│   │       │   └── my_project
│   │       │       ├── backup
│   │       │       └── src
│   │       │           └── main.py
│   │       └── src
│   │           └── main.py
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
│   ├── media
│   └── project
│       ├── config
│       │   └── settings.conf
│       ├── docs
│       │   ├── dev
│       │   │   └── api.md
│       │   └── user
│       │       └── manual.txt
│       ├── README.md
│       ├── src
│       │   ├── main
│       │   │   └── app.py
│       │   └── utils
│       │       └── helper.py
│       └── tests
│           ├── test_main.py
│           └── unit
├── Public
├── temp
├── Templates
└── Videos

53 directories, 27 files
[fedora@localhost ~]$ cd ~/practice/project/docs/user/
[fedora@localhost user]$ cd ../../src/main/
[fedora@localhost main]$ cd ../../tests/
[fedora@localhost tests]$ cd ../src/utils/
[fedora@localhost utils]$ cd ~/practice/project/tests/unit/
[fedora@localhost unit]$ cd ../../
[fedora@localhost project]$ cd ./docs/dev/
[fedora@localhost dev]$ cd ../../src/utils/
[fedora@localhost utils]$ cat ../../README.md
[fedora@localhost utils]$ ls -al ../../docs/user
total 0
drwxr-xr-x. 2 fedora fedora 24 Jul 16 16:29 .
drwxr-xr-x. 4 fedora fedora 29 Jul 16 16:27 ..
-rw-r--r--. 1 fedora fedora  0 Jul 16 16:29 manual.txt
[fedora@localhost utils]$ ls -al ../../config
total 0
drwxr-xr-x. 2 fedora fedora 27 Jul 16 16:31 .
drwxr-xr-x. 6 fedora fedora 73 Jul 16 16:28 ..
-rw-r--r--. 1 fedora fedora  0 Jul 16 16:31 settings.conf
[fedora@localhost utils]$ cd ~/practice/project/src/main/
[fedora@localhost main]$ touch config.py && echo "configuration module" > config.py
[fedora@localhost main]$ touch ../../tests/test_app.py && echo "App test file" > test_app.py
[fedora@localhost main]$ cd ~/practice/project/docs/dev/
[fedora@localhost dev]$ cd ../..
[fedora@localhost project]$ tree
.
├── config
│   └── settings.conf
├── docs
│   ├── dev
│   │   └── api.md
│   └── user
│       └── manual.txt
├── README.md
├── src
│   ├── main
│   │   ├── app.py
│   │   ├── config.py
│   │   └── test_app.py
│   └── utils
│       └── helper.py
└── tests
    ├── test_app.py
    ├── test_main.py
    └── unit

9 directories, 10 files
[fedora@localhost project]$ cd ..
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
│   ├── notes
│   └── study_notes.txt
├── media
└── project
    ├── config
    │   └── settings.conf
    ├── docs
    │   ├── dev
    │   │   └── api.md
    │   └── user
    │       └── manual.txt
    ├── README.md
    ├── src
    │   ├── main
    │   │   ├── app.py
    │   │   ├── config.py
    │   │   └── test_app.py
    │   └── utils
    │       └── helper.py
    └── tests
        ├── test_app.py
        ├── test_main.py
        └── unit

19 directories, 15 files
[fedora@localhost practice]$ cd ~/practice/project/docs/dev/
[fedora@localhost dev]$ touch ../../docs/user/api_copy.md && cp api.md ../../docs/user/api_copy.md
[fedora@localhost dev]$ cp ../../src/utils/helper.py .
[fedora@localhost dev]$ cp ../../config/settings.conf ../../tests/unit/
[fedora@localhost dev]$ cd ~/practice/project/tests/
[fedora@localhost tests]$ mv test_main.py ../unit/
mv: cannot move 'test_main.py' to '../unit/': Not a directory
[fedora@localhost tests]$ mv test_main.py ./unit/
[fedora@localhost tests]$ mv ../src/main/config.py ../config/
[fedora@localhost tests]$ cd ..
[fedora@localhost project]$ cp ./src/main/* ./docs/dev/
[fedora@localhost project]$ mv ./docs/user/* ./tests/unit/
[fedora@localhost project]$ mkdir -p ~/practice/project/backup_config && cp ./config/* ./backup_config/ 
[fedora@localhost project]$ cd ./docs/user/
[fedora@localhost user]$ cd ~/practice/project/
[fedora@localhost project]$ tree
.
├── backup_config
│   ├── config.py
│   └── settings.conf
├── config
│   ├── config.py
│   └── settings.conf
├── docs
│   ├── dev
│   │   ├── api.md
│   │   ├── app.py
│   │   ├── helper.py
│   │   └── test_app.py
│   └── user
├── README.md
├── src
│   ├── main
│   │   ├── app.py
│   │   └── test_app.py
│   └── utils
│       └── helper.py
└── tests
    ├── test_app.py
    └── unit
        ├── api_copy.md
        ├── manual.txt
        ├── settings.conf
        └── test_main.py

10 directories, 17 files
[fedora@localhost project]$ touch ../../backup_config/backup.txt && cp ../../tests/units/manual.txt ./backup_config/backup.txt
touch: cannot touch '../../backup_config/backup.txt': No such file or directory
[fedora@localhost project]$ cd ~/practice/project/docs/user/
[fedora@localhost user]$ touch ../../backup_config/backup.txt && cp ../../tests/units/manual.txt ./backup_config/backup.txt
cp: cannot stat '../../tests/units/manual.txt': No such file or directory
[fedora@localhost user]$ touch ../../backup_config/backup.txt && cp ../../tests/units/manual.txt ./backup_config/backup.txt/
cp: cannot stat '../../tests/units/manual.txt': No such file or directory
[fedora@localhost user]$ touch ../../backup_config/backup.txt && cp ../../tests/units/manual.txt ../../backup_config/backup.txt
cp: cannot stat '../../tests/units/manual.txt': No such file or directory
[fedora@localhost user]$ touch ../../tests/unit/backup.txt
[fedora@localhost user]$ cp ../../tests/unit/manual.txt ../../tests/unit/backup.txt
[fedora@localhost user]$ touch api_copy.md && mv api_copy.md ../../src/main/
[fedora@localhost user]$ cd ~/practice/project/tests/unit/
[fedora@localhost unit]$ cd ../../
[fedora@localhost project]$ tree
.
├── backup_config
│   ├── backup.txt
│   ├── config.py
│   └── settings.conf
├── config
│   ├── config.py
│   └── settings.conf
├── docs
│   ├── dev
│   │   ├── api.md
│   │   ├── app.py
│   │   ├── helper.py
│   │   └── test_app.py
│   └── user
├── README.md
├── src
│   ├── main
│   │   ├── api_copy.md
│   │   ├── app.py
│   │   └── test_app.py
│   └── utils
│       └── helper.py
└── tests
    ├── test_app.py
    └── unit
        ├── api_copy.md
        ├── backup.txt
        ├── manual.txt
        ├── settings.conf
        └── test_main.py

10 directories, 20 files
[fedora@localhost project]$ cd ~/practice/project/tests/unit/
[fedora@localhost unit]$ cat ../../src/utils/helper.py
[fedora@localhost unit]$ cat ../../docs/dev/api.md
[fedora@localhost unit]$ cat ../../README.md
[fedora@localhost unit]$ cd ../../
[fedora@localhost project]$ mkdir -p /src/main/models
mkdir: cannot create directory ‘/src’: Permission denied
[fedora@localhost project]$ mkdir -p ./src/main/models
[fedora@localhost project]$ touch ./docs/README.md && echo "Project Documentation" > README.md
[fedora@localhost project]$ mv ./tests/unit/* ./tests/
[fedora@localhost project]$ cp ./config/* ./src/
[fedora@localhost project]$ cd ~/practice/project/src/main/
[fedora@localhost main]$ mkdir -p ../../project_backup && cp ../../* ../../project_backup/
cp: -r not specified; omitting directory '../../backup_config'
cp: -r not specified; omitting directory '../../config'
cp: -r not specified; omitting directory '../../docs'
cp: -r not specified; omitting directory '../../project_backup'
cp: -r not specified; omitting directory '../../src'
cp: -r not specified; omitting directory '../../tests'
[fedora@localhost main]$ mkdir -p ../../project_backup && cp -r ../../* ../../project_backup/
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$ mkdir -p ../../project_backup/ && cp -r ../../* ../../project_backup/
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$ mkdir -p ../../project_backup &&
> q
bash: q: command not found...
[fedora@localhost main]$ mkdir -p ../../project_backup
[fedora@localhost main]$  cp -r ../../* ../../project_backup/
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$ mkdir -p ../../project_backup/
[fedora@localhost main]$  cp -r ../../* ../../project_backup/
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$  cp -r ../../* ../../project_backup
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$ cp -r ../../* ../../project_backup/
cp: cannot copy a directory, '../../project_backup', into itself, '../../project_backup/project_backup'
[fedora@localhost main]$ mkdir -p ../../../project_backup/
[fedora@localhost main]$ cp -r ../../* ../../../project_backup/
[fedora@localhost main]$ mkdir -p ./models/ && cp ../../utils/*.py ./models/
cp: cannot stat '../../utils/*.py': No such file or directory
[fedora@localhost main]$ mkdir -p ./models/ 
[fedora@localhost main]$ cp ../../src/utils/*.py ./models
[fedora@localhost main]$ touch PROJECT_INFO.md
[fedora@localhost main]$ cp ~/practice/project/README.md ./PROJECT_INFO.md
[fedora@localhost main]$ cp --help
Usage: cp [OPTION]... [-T] SOURCE DEST
  or:  cp [OPTION]... SOURCE... DIRECTORY
  or:  cp [OPTION]... -t DIRECTORY SOURCE...
Copy SOURCE to DEST, or multiple SOURCE(s) to DIRECTORY.

Mandatory arguments to long options are mandatory for short options too.
  -a, --archive                same as -dR --preserve=all
      --attributes-only        don't copy the file data, just the attributes
      --backup[=CONTROL]       make a backup of each existing destination file
  -b                           like --backup but does not accept an argument
      --copy-contents          copy contents of special files when recursive
  -d                           same as --no-dereference --preserve=links
  -f, --force                  if an existing destination file cannot be
                                 opened, remove it and try again (this option
                                 is ignored when the -n option is also used)
  -i, --interactive            prompt before overwrite (overrides a previous -n
                                  option)
  -H                           follow command-line symbolic links in SOURCE
  -l, --link                   hard link files instead of copying
  -L, --dereference            always follow symbolic links in SOURCE
  -n, --no-clobber             do not overwrite an existing file (overrides
                                 a previous -i option)
  -P, --no-dereference         never follow symbolic links in SOURCE
  -p                           same as --preserve=mode,ownership,timestamps
      --preserve[=ATTR_LIST]   preserve the specified attributes (default:
                                 mode,ownership,timestamps), if possible
                                 additional attributes: context, links, xattr,
                                 all
  -c                           deprecated, same as --preserve=context
      --no-preserve=ATTR_LIST  don't preserve the specified attributes
      --parents                use full source file name under DIRECTORY
  -R, -r, --recursive          copy directories recursively
      --reflink[=WHEN]         control clone/CoW copies. See below
      --remove-destination     remove each existing destination file before
                                 attempting to open it (contrast with --force)
      --sparse=WHEN            control creation of sparse files. See below
      --strip-trailing-slashes  remove any trailing slashes from each SOURCE
                                 argument
  -s, --symbolic-link          make symbolic links instead of copying
  -S, --suffix=SUFFIX          override the usual backup suffix
  -t, --target-directory=DIRECTORY  copy all SOURCE arguments into DIRECTORY
  -T, --no-target-directory    treat DEST as a normal file
  -u, --update                 copy only when the SOURCE file is newer
                                 than the destination file or when the
                                 destination file is missing
  -v, --verbose                explain what is being done
  -x, --one-file-system        stay on this file system
  -Z                           set SELinux security context of destination
                                 file to default type
      --context[=CTX]          like -Z, or if CTX is specified then set the
                                 SELinux or SMACK security context to CTX
      --help     display this help and exit
      --version  output version information and exit

By default, sparse SOURCE files are detected by a crude heuristic and the
corresponding DEST file is made sparse as well.  That is the behavior
selected by --sparse=auto.  Specify --sparse=always to create a sparse DEST
file whenever the SOURCE file contains a long enough sequence of zero bytes.
Use --sparse=never to inhibit creation of sparse files.

When --reflink[=always] is specified, perform a lightweight copy, where the
data blocks are copied only when modified.  If this is not possible the copy
fails, or if --reflink=auto is specified, fall back to a standard copy.
Use --reflink=never to ensure a standard copy is performed.

The backup suffix is '~', unless set with --suffix or SIMPLE_BACKUP_SUFFIX.
The version control method may be selected via the --backup option or through
the VERSION_CONTROL environment variable.  Here are the values:

  none, off       never make backups (even if --backup is given)
  numbered, t     make numbered backups
  existing, nil   numbered if numbered backups exist, simple otherwise
  simple, never   always make simple backups

As a special case, cp makes a backup of SOURCE when the force and backup
options are given and SOURCE and DEST are the same name for an existing,
regular file.

GNU coreutils online help: <https://www.gnu.org/software/coreutils/>
Full documentation <https://www.gnu.org/software/coreutils/cp>
or available locally via: info '(coreutils) cp invocation'

```