```shell

[root@localhost quests]# nano argument_first.sh
[root@localhost quests]# read -p "keyboardhere: " read_first
keyboardhere: ABCD
[root@localhost quests]# source ./argument_first.sh heeeloo
heeeloo
[root@localhost quests]# echo "$read_first"
ABCD



echo "$1" 
```