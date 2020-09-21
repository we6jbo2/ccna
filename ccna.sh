#!/bin/bash
input()
{
    read -p "$1" UserChoice 
    while [[ "$UserChoice" != "$2" ]]
    do
        echo -e "Enter:" "$2"
#        echo $1
        read -p "$1" UserChoice 
    done

}

i()
{
    echo -e "\e[30;48;5;82m$1\e[0m"
}

c()
{
    echo -e "\e[0m$1"
}





mkdir /home/pi/dontdelete/vid/hidds
cp ~/ccna/ccna.sh /home/pi/dontdelete/vid/hidds/ccna.sh

rand=$[RANDOM%10+1]

rand=1 #remove this
if [ $rand = 1 ]; then
#    i "One"
    #c "Command"
    #c "Router>"
    i "Enter privileged EXEC mode"
    input "Router>" "enable"
    i "Return to user EXEC mode using the disable command"
    input "Router#" "disable"
    i "Re-enter privileged EXEC mode."
    input "Router>" "enable"
    i "Enter global configuration mode using the configure terminal command"
    input "Router#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    i "Exit global conifguration mode and return to privileged EXEC mode using the exit command."
    input "Router(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    i "Re-enter global configuration mode."
    input "Router#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    i "Enter line subconfiguration mode for the console port using the line console 0 command."
    input "Router(config)#" "line console 0"
    i "Return to global configuration mode using the exit command"
    input "Router(config-line)#" "exit"
    i "Enter VTY line subconfiguration mode using the line vty 0 15 command."
    input "Router(config)#" "line vty 0 15"
    i "Return to global configuration mode."
    input "Router(config-line)#" "exit"
    i "Enter the VLAN 1 interface subconfiguration mode using the interface vlan 1 command."
    input "Router(config)# " "interface vlan 1"
    i "From interface configuration mode, switch to line console subconfiguration mode using the line console 0 global configuration command."
    input "Router(config-if)#" "line console 0"
    i "Return to privileged EXEC mode using the end command"
    input "Router(config-line)#" "end"
    i "You successfully navigated between the various IOS command line modes."
fi
if [ $rand = 2 ]; then
    echo "Two"
fi
if [ rand = 3 ]; then
    echo "Three"
fi
if [ $rand = 4 ]; then
    echo "four"
fi
if [ $rand = 5 ]; then
    echo "Five"
fi
if [ $rand = 6 ]; then
    echo "Six"
fi
if [ $rand = 7 ]; then
    echo "Seven"
fi
if [ $rand = 8 ]; then
    echo "Eight"
fi
if [ $rand = 9 ]; then
    echo "Nine"
fi
if [ $rand = 10 ]; then
    echo "Ten"
fi
sleep 5
    read -p "Run again? y/n:" RunAgain
    if [[ "$RunAgain" == "y" ]]
    then 
        gnome-terminal --hide-menubar --full-screen -e /home/we6jbo/ccna/ccna.sh	
    fi 

