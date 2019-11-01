#!/bin/bash
#功能描述(Description):石头剪刀布游戏.
#计算机根据生成的随机数出拳,提示用户出拳，
#将用户的输入与计算机的随机数进行比较,比较输赢.

#1:石头,2:剪刀,3:布(随机数对3求模后,再加1的结果为1,2,3.)
computer=$[RANDOM%3+1]
clear
echo "#########################"
echo "#    石头剪刀布游戏.    #"
echo -e "#\033[32m 请您根据下列提示出拳: \033[0m#"
echo "#########################"
echo "|---------------|"
echo "|  1.石头.      |"
echo "|  2.剪刀.      |"
echo "|  3.布.        |"
echo "|---------------|"
read -p "请输入1-3的值:" person
clear
case $person in
1)
    if [[ "$computer" == 1 ]];then
        echo " __________________"
        echo "|    您出拳:石头.  |"
        echo "|计算机出拳:石头.  |"
        echo "|__________________|"
        echo -e "\033[32m平局.\033[0m"
    elif [[ "$computer" == 2 ]];then
        echo " __________________" 
        echo "|    您出拳:石头.  |"
        echo "|计算机出拳:剪刀.  |"
        echo "|__________________|"
        echo -e "\033[32m恭喜,您赢了!\033[0m"
    elif [[ "$computer" == 3 ]];then
        echo " __________________"
        echo "|    您出拳:石头.  |"
        echo "|计算机出拳:布.    |"
        echo "|__________________|"
        echo -e "\033[32m计算机赢!\033[0m"
    fi;;
2)
    if [[ "$computer" == 1 ]];then
        echo " __________________"
        echo "|    您出拳:剪刀.  |"
        echo "|计算机出拳:石头.  |"
        echo "|__________________|"
        echo -e "\033[32m计算机赢!\033[0m"
    elif [[ "$computer" == 2 ]];then
        echo " __________________"
        echo "|    您出拳:剪刀.  |"
        echo "|计算机出拳:剪刀.  |"
        echo "|__________________|"
        echo -e "\033[32m平局.\033[0m"
    elif [[ "$computer" == 3 ]];then
        echo " __________________"
        echo "|    您出拳:剪刀.  |"
        echo "|计算机出拳:布.    |"
        echo "|__________________|"
        echo -e "\033[32m恭喜,您赢了!\033[0m"
   fi;;
3)
    if [[ "$computer" == 1 ]];then
        echo " __________________"
        echo "|    您出拳:布.    |"
        echo "|计算机出拳:石头.  |"
        echo "|__________________|"
        echo -e "\033[32m恭喜,您赢了!\033[0m"
    elif [[ "$computer" == 2 ]];then
        echo " __________________"
        echo "|    您出拳:布.    |"
        echo "|计算机出拳:剪刀.  |"
        echo "|__________________|"
        echo -e "\033[32m计算机赢!\033[0m"
    elif [[ "$computer" == 3 ]];then
        echo " __________________"
        echo "|    您出拳:布.    |"
        echo "|计算机出拳:布.    |"
        echo "|__________________|"
        echo -e "\033[32m平局.\033[0m"
    fi;;
*)
    echo -e "\033[91m无效的输入值,请输入1-3范围内的值.\033[0m";;
esac