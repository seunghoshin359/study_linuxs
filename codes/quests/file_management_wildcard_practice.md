``` shell

[fedora@localhost ~]$ cd ./Downloads/
[fedora@localhost Downloads]$ rm -r *
[fedora@localhost Downloads]$ ^[[200~mkdir -p demo/{original,backup} && cd demo/original/ && touch file{1..2}.txt image1.png && cp ../original/*.txt ../backup/ && ls ../backup ~
bash: mkdir: command not found...
mkdir -p demo/{original,backup} && cd demo/original/ && touch file{1..2}.txt image1.png && cp ../original/*.txt ../backup/ && ls ../backup ~[fedora@localhos[fedora@localhost Downloads]$ mkdir -p demo/{original,backup} && cd demo/original/ && touch file{1..2}.txt image1.png && cp ../original/*.txt ../backup/ && ls ../backup 
file1.txt  file2.txt
[fedora@localhost original]$ pwd
/home/fedora/Downloads/demo/original
[fedora@localhost original]$ ^C
[fedora@localhost original]$ cd ~
[fedora@localhost ~]$ cd /home/fedora/quests/
[fedora@localhost quests]$ mkdir wildcard_file_practice
[fedora@localhost quests]$ cd wildcard_file_practice
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt data1.csv data2.csv data3.csv data_old.csv \ 
image1.jpg image2.jpg image3.png photo.gif backup_2023.tar backup_2024.tar \
config.conf log_error.txt log_access.txt log_system.txt temp1.tmp temp2.tmp temp3.tmp \
file_001.dat file_002.dat file_010.dat script1.sh script2.sh test_script.sh document.pdf presentation.ppt \
spreadsheet.xls readme.md changelog.md license.txt old_report.txt new_report.txt final_report.txt
bash: image1.jpg: command not found...
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt data1.csv data2.csv data3.csv data_old.csv \ 
image1.jpg image2.jpg image3.png photo.gif backup_2023.tar backup_2024.tar \
config.conf log_error.txt log_access.txt log_system.txt temp1.tmp temp2.tmp temp3.tmp \
file_001.dat file_002.dat file_010.dat script1.sh script2.sh test_script.sh document.pdf presentation.ppt \
spreadsheet.xls readme.md changelog.md license.txt old_report.txt new_report.txt final_report.txt
bash: image1.jpg: command not found...
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt data1.csv data2.csv data3.csv data_old.csv \ 
image1.jpg image2.jpg image3.png photo.gif backup_2023.tar backup_2024.tar \
config.conf log_error.txt log_access.txt log_system.txt temp1.tmp temp2.tmp temp3.tmp \
file_001.dat file_002.dat file_010.dat script1.sh script2.sh test_script.sh document.pdf presentation.ppt \
spreadsheet.xls readme.md changelog.md license.txt old_report.txt new_report.txt final_report.txt
bash: image1.jpg: command not found...
[fedora@localhost wildcard_file_practice]$ ls
' '          data2.csv   data_old.csv   report2.txt
 data1.csv   data3.csv   report1.txt    report3.txt
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt && \ 
touch data1.csv data2.csv data3.csv data_old.csv && \
touch image1.jpg image2.jpg image3.png photo.gif && \
touch backup_2023.tar backup_2024.tar config.conf && \
touch log_error.txt log_access.txt log_system.txt && \
touch temp1.tmp temp2.tmp temp3.tmp && \
touch file_001.dat file_002.dat file_010.dat && \
touch script1.sh script2.sh test_script.sh && \
touch document.pdf presentation.ppt spreadsheet.xls && \
touch readme.md changelog.md license.txt && \
touch old_report.txt new_report.txt final_report.txt 
bash:  : command not found...
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt && \ 
touch data1.csv data2.csv data3.csv data_old.csv && \
touch image1.jpg image2.jpg image3.png photo.gif && \
touch backup_2023.tar backup_2024.tar config.conf && \
touch log_error.txt log_access.txt log_system.txt && \
touch temp1.tmp temp2.tmp temp3.tmp && \
touch file_001.dat file_002.dat file_010.dat && \
touch script1.sh script2.sh test_script.sh && \
touch document.pdf presentation.ppt spreadsheet.xls && \
touch readme.md changelog.md license.txt && \
touch old_report.txt new_report.txt final_report.txt 
bash:  : command not found...
[fedora@localhost wildcard_file_practice]$ mkdir archives backup logs images documents scripts
[fedora@localhost wildcard_file_practice]$ ^[[200~touch report1.txt report2.txt report3.txt
^[[201~bash: touch: command not found...
touch report1.txt report2.txt report3.txt[fedora@localhost wildcard_file_practice]$ ~
bash: /home/fedora: Is a directory
[fedora@localhost wildcard_file_practice]$ touch report1.txt report2.txt report3.txt
[fedora@localhost wildcard_file_practice]$ touch data1.csv data2.csv data3.csv data_old.csv
[fedora@localhost wildcard_file_practice]$ touch image1.jpg image2.jpg image3.png photo.gif
[fedora@localhost wildcard_file_practice]$ touch backup_2023.tar backup_2024.tar config.conf
[fedora@localhost wildcard_file_practice]$ touch log_error.txt log_access.txt log_system.txt
[fedora@localhost wildcard_file_practice]$ touch temp1.tmp temp2.tmp temp3.tmp 
[fedora@localhost wildcard_file_practice]$ touch file_001.dat file_002.dat file_010.dat
[fedora@localhost wildcard_file_practice]$ touch script1.sh script2.sh test_script.sh
[fedora@localhost wildcard_file_practice]$ touch document.pdf presentation.ppt spreadsheet.xls
[fedora@localhost wildcard_file_practice]$ touch readme.md changelog.md license.txt
[fedora@localhost wildcard_file_practice]$ touch old_report.txt new_report.txt final_report.txt
[fedora@localhost wildcard_file_practice]$ mkdir backup_{2020,2021,2022,2023,2024}
[fedora@localhost wildcard_file_practice]$ mkdir -p ./logs/log_{1..12}
[fedora@localhost wildcard_file_practice]$ mkdir project_{A..C}
[fedora@localhost wildcard_file_practice]$ mkdir -p ./data/2024/{01,02,03}
[fedora@localhost wildcard_file_practice]$ tree
.
├──  
├── archives
├── backup
├── backup_2020
├── backup_2021
├── backup_2022
├── backup_2023
├── backup_2023.tar
├── backup_2024
├── backup_2024.tar
├── changelog.md
├── config.conf
├── data
│   └── 2024
│       ├── 01
│       ├── 02
│       └── 03
├── data1.csv
├── data2.csv
├── data3.csv
├── data_old.csv
├── document.pdf
├── documents
├── file_001.dat
├── file_002.dat
├── file_010.dat
├── final_report.txt
├── image1.jpg
├── image2.jpg
├── image3.png
├── images
├── license.txt
├── log_access.txt
├── log_error.txt
├── logs
│   ├── log_1
│   ├── log_10
│   ├── log_11
│   ├── log_12
│   ├── log_2
│   ├── log_3
│   ├── log_4
│   ├── log_5
│   ├── log_6
│   ├── log_7
│   ├── log_8
│   └── log_9
├── log_system.txt
├── new_report.txt
├── old_report.txt
├── photo.gif
├── presentation.ppt
├── project_A
├── project_B
├── project_C
├── readme.md
├── report1.txt
├── report2.txt
├── report3.txt
├── script1.sh
├── script2.sh
├── scripts
├── spreadsheet.xls
├── temp1.tmp
├── temp2.tmp
├── temp3.tmp
└── test_script.sh

31 directories, 36 files
[fedora@localhost wildcard_file_practice]$ pwd
/home/fedora/quests/wildcard_file_practice
[fedora@localhost wildcard_file_practice]$ cp ./*.txt ./backup
[fedora@localhost wildcard_file_practice]$ cp ./report* ./documents && \
> cp ./backup/report* ./documents
[fedora@localhost wildcard_file_practice]$ cp ./image?.{jpg,png} ./images
[fedora@localhost wildcard_file_practice]$ cp data[1-3].csv ./backup
[fedora@localhost wildcard_file_practice]$ cp log_*.txt ./logs && \
> cp ./backup/log_*.txt ./logs
[fedora@localhost wildcard_file_practice]$ mkdir temp/
[fedora@localhost wildcard_file_practice]$ mv *.tmp ./temp/
[fedora@localhost wildcard_file_practice]$ mv ./backup_* ./archives
[fedora@localhost wildcard_file_practice]$ mv *.sh ./scripts
[fedora@localhost wildcard_file_practice]$ mv file_[0-9][0-9][0-9].dat ./data
[fedora@localhost wildcard_file_practice]$ mv {old_,new_}* ./archives
[fedora@localhost wildcard_file_practice]$ rm -r ./temp/*.tmp
[fedora@localhost wildcard_file_practice]$ rm -r temp*
[fedora@localhost wildcard_file_practice]$ rm -r ./archives/backup_2023.tar
[fedora@localhost wildcard_file_practice]$ rm -r *.{!jpg,!png,!gif,!txt,!csv,!tar,!dat,!pdf,!ppt,!xls} && \
bash: !jpg,!png,!gif,!txt,!csv,!tar,!dat,!pdf,!ppt,!xls}: event not found
[fedora@localhost wildcard_file_practice]$ rm -r *.!??? && rm -r ./scripts/* && \
bash: !??: event not found
[fedora@localhost wildcard_file_practice]$ rm -r ./logs/log_{1..12}
[fedora@localhost wildcard_file_practice]$ pwd
/home/fedora/quests/wildcard_file_practice
[fedora@localhost wildcard_file_practice]$ find /home/fedora/quests/wildcard_file_practice/ -name !(*.???) -delete
find: paths must precede expression: `archives'
find: possible unquoted pattern after predicate `-name'?
[fedora@localhost wildcard_file_practice]$ find /home/fedora/quests/wildcard_file_practice -name !(*.???) -delete
find: paths must precede expression: `archives'
find: possible unquoted pattern after predicate `-name'?
[fedora@localhost wildcard_file_practice]$ ls
' '             data_old.csv       log_access.txt     readme.md
 archives       document.pdf       log_error.txt      report1.txt
 backup         documents          logs               report2.txt
 changelog.md   final_report.txt   log_system.txt     report3.txt
 config.conf    image1.jpg         photo.gif          scripts
 data           image2.jpg         presentation.ppt   spreadsheet.xls
 data1.csv      image3.png         project_A
 data2.csv      images             project_B
 data3.csv      license.txt        project_C
[fedora@localhost wildcard_file_practice]$ find ./ -type f ! -name "*.???"
./ 
./config.conf
./readme.md
./changelog.md
./scripts/script1.sh
./scripts/script2.sh
./scripts/test_script.sh
[fedora@localhost wildcard_file_practice]$ find ./ -type f ! -name "*.???" -delete
[fedora@localhost wildcard_file_practice]$ ^C
[fedora@localhost wildcard_file_practice]$ cp ./*.{jpg,png,gif} ./images
[fedora@localhost wildcard_file_practice]$ cp ./*.{pdf,ppt,xls,md} ./documents
cp: cannot stat './*.md': No such file or directory
[fedora@localhost wildcard_file_practice]$ cp ./*.{pdf,ppt,xls} ./documents
[fedora@localhost wildcard_file_practice]$ mv ./*.{csv,dat} ./data
mv: cannot stat './*.dat': No such file or directory
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.{csv,dat}" \  mv ./*.csv ./data 
find: paths must precede expression: ` '
[fedora@localhost wildcard_file_practice]$ find ./ -type f \(-name "*.csv" -o -name "*.dat"\) 
find: paths must precede expression: `(-name'
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.csv" -o -name "*.dat" \) 
./backup/data1.csv
./backup/data2.csv
./backup/data3.csv
./data/file_001.dat
./data/file_002.dat
./data/file_010.dat
./data/data1.csv
./data/data2.csv
./data/data3.csv
./data/data_old.csv
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.csv" -o -name "*.dat" \) -exec mv -t ./data {} +
mv: './data/file_001.dat' and './data/file_001.dat' are the same file
mv: './data/file_002.dat' and './data/file_002.dat' are the same file
mv: './data/file_010.dat' and './data/file_010.dat' are the same file
mv: './data/data1.csv' and './data/data1.csv' are the same file
mv: './data/data2.csv' and './data/data2.csv' are the same file
mv: './data/data3.csv' and './data/data3.csv' are the same file
mv: './data/data_old.csv' and './data/data_old.csv' are the same file
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.csv" -o -name "*.dat" \) -exec mv -t ./data {} +
mv: './data/file_001.dat' and './data/file_001.dat' are the same file
mv: './data/file_002.dat' and './data/file_002.dat' are the same file
mv: './data/file_010.dat' and './data/file_010.dat' are the same file
mv: './data/data1.csv' and './data/data1.csv' are the same file
mv: './data/data2.csv' and './data/data2.csv' are the same file
mv: './data/data3.csv' and './data/data3.csv' are the same file
mv: './data/data_old.csv' and './data/data_old.csv' are the same file
[fedora@localhost wildcard_file_practice]$ mkdir -p ./backup/txt_files/ && \ find ./ -type f *.txt -exec cp -t ./backup/txt_files/ {} 
bash:  find: command not found...
Similar command is: 'find'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./backup/txt_files/ && \ find ./ -type f *.txt -exec cp -t ./backup/txt_files/ {} +
bash:  find: command not found...
Similar command is: 'find'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./backup/txt_files/ && \ find ./ -type f *.txt -exec cp ./backup/txt_files/ 
bash:  find: command not found...
Similar command is: 'find'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./backup/txt_files/ && \find ./ -type f *.txt -exec cp ./backup/txt_files/ 
find: paths must precede expression: `final_report.txt'
find: possible unquoted pattern after predicate `-type'?
[fedora@localhost wildcard_file_practice]$ mkdir -p ./backup/txt_files/
[fedora@localhost wildcard_file_practice]$ find ./ -type f *.txt -exec cp ./backup/txt_files/ 
find: paths must precede expression: `final_report.txt'
find: possible unquoted pattern after predicate `-type'?
[fedora@localhost wildcard_file_practice]$ find ./ -type f *.txt -exec cp -t ./backup/txt_files/ {} + 
find: paths must precede expression: `final_report.txt'
find: possible unquoted pattern after predicate `-type'?
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.txt" -exec cp -t ./backup/txt_files/ {} + 
cp: will not overwrite just-created './backup/txt_files/final_report.txt' with './backup/final_report.txt'
cp: will not overwrite just-created './backup/txt_files/license.txt' with './backup/license.txt'
cp: will not overwrite just-created './backup/txt_files/log_access.txt' with './backup/log_access.txt'
cp: will not overwrite just-created './backup/txt_files/log_error.txt' with './backup/log_error.txt'
cp: will not overwrite just-created './backup/txt_files/log_system.txt' with './backup/log_system.txt'
cp: will not overwrite just-created './backup/txt_files/new_report.txt' with './backup/new_report.txt'
cp: will not overwrite just-created './backup/txt_files/old_report.txt' with './backup/old_report.txt'
cp: will not overwrite just-created './backup/txt_files/report1.txt' with './backup/report1.txt'
cp: will not overwrite just-created './backup/txt_files/report2.txt' with './backup/report2.txt'
cp: will not overwrite just-created './backup/txt_files/report3.txt' with './backup/report3.txt'
cp: will not overwrite just-created './backup/txt_files/log_access.txt' with './logs/log_access.txt'
cp: will not overwrite just-created './backup/txt_files/log_error.txt' with './logs/log_error.txt'
cp: will not overwrite just-created './backup/txt_files/log_system.txt' with './logs/log_system.txt'
cp: will not overwrite just-created './backup/txt_files/report1.txt' with './documents/report1.txt'
cp: will not overwrite just-created './backup/txt_files/report2.txt' with './documents/report2.txt'
cp: will not overwrite just-created './backup/txt_files/report3.txt' with './documents/report3.txt'
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.conf" -exec cp -t ./backup/config/ {} + 
[fedora@localhost wildcard_file_practice]$ mkdir -p ./logs/{error,access,system}
[fedora@localhost wildcard_file_practice]$ mv ./logs/log_error.txt ./logs/error/
[fedora@localhost wildcard_file_practice]$ mv ./logs/log_access.txt logs/access/
[fedora@localhost wildcard_file_practice]$ mv ./logs/log_system.txt logs/system/
[fedora@localhost wildcard_file_practice]$ mkdir -p ./processed/ 
[fedora@localhost wildcard_file_practice]$ find ./ -type -f \(-name "report" -o -name "data" \) -exec mv -t ./processed {} +
find: Unknown argument to -type: -
[fedora@localhost wildcard_file_practice]$ find ./ -type -f \( -name "report" -o -name "data" \) -exec mv -t ./processed {} +
find: Unknown argument to -type: -
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "report" -o -name "data" \) -exec mv -t ./processed {} +
[fedora@localhost wildcard_file_practice]$ mkdir -p ./draft/ && find ./ -type f ! -name "final_*.txt" -exec mv -t ./draft/
find: missing argument to `-exec'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./draft/ && find ./ -type f ! -name "final_*.txt" -exec mv -t ./draft/ {} +
mv: will not overwrite just-created './draft/license.txt' with './backup/license.txt'
mv: will not overwrite just-created './draft/log_access.txt' with './backup/log_access.txt'
mv: will not overwrite just-created './draft/log_error.txt' with './backup/log_error.txt'
mv: will not overwrite just-created './draft/log_system.txt' with './backup/log_system.txt'
mv: will not overwrite just-created './draft/new_report.txt' with './backup/new_report.txt'
mv: will not overwrite just-created './draft/old_report.txt' with './backup/old_report.txt'
mv: will not overwrite just-created './draft/report1.txt' with './backup/report1.txt'
mv: will not overwrite just-created './draft/report2.txt' with './backup/report2.txt'
mv: will not overwrite just-created './draft/report3.txt' with './backup/report3.txt'
mv: will not overwrite just-created './draft/report1.txt' with './backup/txt_files/report1.txt'
mv: will not overwrite just-created './draft/report2.txt' with './backup/txt_files/report2.txt'
mv: will not overwrite just-created './draft/report3.txt' with './backup/txt_files/report3.txt'
mv: will not overwrite just-created './draft/log_error.txt' with './backup/txt_files/log_error.txt'
mv: will not overwrite just-created './draft/log_access.txt' with './backup/txt_files/log_access.txt'
mv: will not overwrite just-created './draft/log_system.txt' with './backup/txt_files/log_system.txt'
mv: will not overwrite just-created './draft/license.txt' with './backup/txt_files/license.txt'
mv: will not overwrite just-created './draft/old_report.txt' with './backup/txt_files/old_report.txt'
mv: will not overwrite just-created './draft/new_report.txt' with './backup/txt_files/new_report.txt'
mv: will not overwrite just-created './draft/log_error.txt' with './logs/error/log_error.txt'
mv: will not overwrite just-created './draft/log_access.txt' with './logs/access/log_access.txt'
mv: will not overwrite just-created './draft/log_system.txt' with './logs/system/log_system.txt'
mv: will not overwrite just-created './draft/image1.jpg' with './images/image1.jpg'
mv: will not overwrite just-created './draft/image2.jpg' with './images/image2.jpg'
mv: will not overwrite just-created './draft/image3.png' with './images/image3.png'
mv: will not overwrite just-created './draft/photo.gif' with './images/photo.gif'
mv: will not overwrite just-created './draft/report1.txt' with './documents/report1.txt'
mv: will not overwrite just-created './draft/report2.txt' with './documents/report2.txt'
mv: will not overwrite just-created './draft/report3.txt' with './documents/report3.txt'
mv: will not overwrite just-created './draft/document.pdf' with './documents/document.pdf'
mv: will not overwrite just-created './draft/presentation.ppt' with './documents/presentation.ppt'
mv: will not overwrite just-created './draft/spreadsheet.xls' with './documents/spreadsheet.xls'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./single_digit/ && find ./ -type f  -name "*{001..009}*" -exec mv -t ./single_digit/ {} +
[fedora@localhost wildcard_file_practice]$ mkdir -p ./completed && find ./ -type f -name "report*.txt" -exec mv -t  ./completed {} + 
mv: will not overwrite just-created './completed/report1.txt' with './backup/txt_files/report1.txt'
mv: will not overwrite just-created './completed/report2.txt' with './backup/txt_files/report2.txt'
mv: will not overwrite just-created './completed/report3.txt' with './backup/txt_files/report3.txt'
mv: will not overwrite just-created './completed/report1.txt' with './documents/report1.txt'
mv: will not overwrite just-created './completed/report2.txt' with './documents/report2.txt'
mv: will not overwrite just-created './completed/report3.txt' with './documents/report3.txt'
mv: will not overwrite just-created './completed/report1.txt' with './draft/report1.txt'
mv: will not overwrite just-created './completed/report2.txt' with './draft/report2.txt'
mv: will not overwrite just-created './completed/report3.txt' with './draft/report3.txt'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./ongoing && find ./ -type f -name \( -name "temp*" -o -name "*_draft"\) -exec mv -t ./ongoing {} +
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "backup_*" -exec mv ./archives {} +
mv: cannot overwrite non-directory './draft/backup_2024.tar' with directory './archives'
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.tmp" -exec rm -r {} +
[fedora@localhost wildcard_file_practice]$ mkdir -p ./logs/2024/ && mv ./archives/backup_2024 ./logs/2024/
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "log_error*" -exec cp -t ./logs/error/ {} +
cp: will not overwrite just-created './logs/error/log_error.txt' with './backup/txt_files/log_error.txt'
cp: './logs/error/log_error.txt' and './logs/error/log_error.txt' are the same file
cp: will not overwrite just-created './logs/error/log_error.txt' with './draft/log_error.txt'
[fedora@localhost wildcard_file_practice]$ rm -r ./archives/backup_2023
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "log_system" -exec mv -t ./logs/system/ {} +
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.sh" -exec mv -t ./scripts/
find: missing argument to `-exec'
[fedora@localhost wildcard_file_practice]$ find ./ -type f -name "*.sh" -exec mv -t ./scripts/ {} +
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.conf" -o "*.config"\) -exec mv -t ./config/ {} +
find: paths must precede expression: `*.config)'
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.conf" -o -name "*.config"\) -exec mv -t ./config/ {} +
find: invalid expression; I was expecting to find a ')' somewhere but did not see one.
[fedora@localhost wildcard_file_practice]$ find ./ -type f \( -name "*.conf" -o -name "*.config" \) -exec mv -t ./config/ {} +
[fedora@localhost wildcard_file_practice]$ mkdir -p ./docs/ && find ./ -type f \( -name "*.md" -o -name "*.txt" \) -exec mv -t ./docs/ {} +
mv: will not overwrite just-created './docs/final_report.txt' with './backup/final_report.txt'
mv: will not overwrite just-created './docs/log_error.txt' with './backup/txt_files/log_error.txt'
mv: will not overwrite just-created './docs/log_access.txt' with './backup/txt_files/log_access.txt'
mv: will not overwrite just-created './docs/log_system.txt' with './backup/txt_files/log_system.txt'
mv: will not overwrite just-created './docs/license.txt' with './backup/txt_files/license.txt'
mv: will not overwrite just-created './docs/final_report.txt' with './backup/txt_files/final_report.txt'
mv: will not overwrite just-created './docs/old_report.txt' with './backup/txt_files/old_report.txt'
mv: will not overwrite just-created './docs/new_report.txt' with './backup/txt_files/new_report.txt'
mv: will not overwrite just-created './docs/log_error.txt' with './logs/error/log_error.txt'
mv: will not overwrite just-created './docs/log_access.txt' with './logs/access/log_access.txt'
mv: will not overwrite just-created './docs/log_system.txt' with './logs/system/log_system.txt'
mv: will not overwrite just-created './docs/report1.txt' with './documents/report1.txt'
mv: will not overwrite just-created './docs/report2.txt' with './documents/report2.txt'
mv: will not overwrite just-created './docs/report3.txt' with './documents/report3.txt'
mv: will not overwrite just-created './docs/report1.txt' with './draft/report1.txt'
mv: will not overwrite just-created './docs/report2.txt' with './draft/report2.txt'
mv: will not overwrite just-created './docs/report3.txt' with './draft/report3.txt'
mv: will not overwrite just-created './docs/log_error.txt' with './draft/log_error.txt'
mv: will not overwrite just-created './docs/log_access.txt' with './draft/log_access.txt'
mv: will not overwrite just-created './docs/log_system.txt' with './draft/log_system.txt'
mv: will not overwrite just-created './docs/license.txt' with './draft/license.txt'
mv: will not overwrite just-created './docs/old_report.txt' with './draft/old_report.txt'
mv: will not overwrite just-created './docs/new_report.txt' with './draft/new_report.txt'
mv: will not overwrite just-created './docs/report1.txt' with './completed/report1.txt'
mv: will not overwrite just-created './docs/report2.txt' with './completed/report2.txt'
mv: will not overwrite just-created './docs/report3.txt' with './completed/report3.txt'
[fedora@localhost wildcard_file_practice]$ mkdir -p ./docs/ && find ./ -type f \( -name "*.csv" -o -name "*.dat" \) -exec mv -t ./data/ {} +



```