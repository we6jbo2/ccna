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

#rand=4 #remove this
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
    i "Enter privileged EXEC mode"
    input "Switch>" "enable"
    i "Change the host name to sw-floor-1"
    input "Switch#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z"
    input "Switch(config)#" "hostname sw-floor-1"
    i "Type exit a couple of times"
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    input "sw-floor-1#" "exit"
fi
if [ $rand = 3 ]; then
    i "Enter privileged EXEC mode"
    input "sw-floor-1>" "enable"
    i "Add the password, cisco, to line console 0"
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    input "sw-floor-1(config)#" "line console 0"
    input "sw-floor-1(config-line)#" "password cisco"
    input "sw-floor-1(config-line)#" "login"
    i "Type exit"
    input "sw-floor-1(config-line)#" "exit"
    i "Type exit again"
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    i "Console access will now require a password before allowing access to the user EXEC mode"
    i "Next, secure privileged EXEC access using the password, class."
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    input "sw-floor-1(config)#" "enable secret class"
    i "Type exit"
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    i "Virtual terminal (VTY) lines enable remote access using Telnet or SSH to the device."
    i "Secure VTY lines. Use password, cisco"
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    input "sw-floor-1(config)#" "line vty 0 15"
    input "sw-floor-1(config-line)#" "password cisco"
    input "sw-floor-1(config-line)#" "login"
    i "Type exit."
    input "sw-floor-1(config-line)#" "exit"
    i "Type exit, again."
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    i "The startup-config and running-config files display most passwords in plaintext. Encrypt them."
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    input "sw-floor-1(config)#" "service password-encryption"
    i "Type exit."
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
    i "Last, show the running config"
    input "sw-floor-1#" "show running-config"
    i "The running config will display on the screen"
    input "type, understood" "understood"
    i "Great!"


fi
if [ $rand = 4 ]; then
    i "The password is cisco"
    c "User Access Verification"
    input "Password:" "cisco"
    i "Enter privileged EXEC mode"
    input "sw-floor-1>" "enable" 
    i "The password is class"
    input "Password:" "class"
    i "Change the message of the day"
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    i "Use the following message: #private#"
    input "sw-floor-1(config)#" "banner motd #private#"
    i "Type exit"
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"
fi
if [ $rand = 5 ]; then
    i "The password is cisco"
    c "User Access Verification"
    input "Password:" "cisco"
    i "Enter privileged EXEC mode"
    input "sw-floor-1>" "enable" 
    i "The password is class"
    input "Password:" "class"
    i "Change the IP of the switch to 223.1.1.5 with a mast of 255.255.255.0"
    input "sw-floor-1#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    input "sw-floor-1(config)#" "interface vlan 1"
    input "sw-floor-1(config-if)#" "ip address 223.1.1.5 225.225.225.0"
    input "sw-floor-1(config-if)#" "no shutdown"
    c "%LINK-5-CHANGED: Interface Vlan1, changed state to up"
    c "%LINEPROTO-5-UPDOWN: Line protocol on Interface Vlan1, changed state to up"
    i "Set the default gateway to 223.1.1.1"
    input "sw-floor-1(config-if)#" "exit"
    input "sw-floor-1(config)#" "ip default-gateway 223.1.1.1"
    i "Type exit"
    input "sw-floor-1(config)#" "exit"
    c "%SYS-5-CONFIG_I: Configured from console by console"



fi
if [ $rand = 6 ]; then
    i "The password is cisco"
    c "User Access Verification"
    input "Password:" "cisco"
    i "Enter privileged EXEC mode"
    input "sw-floor-1>" "enable" 
    i "The password is class"
    input "Password:" "class"
    i "Copy the running configuration to the startup configuration"
    input "sw-floor-1#" "copy running-config startup-config"
    c "Destination filename [startup-config]?"
    c "Building configuration..."
    c "[OK]"
    i "Good job!"
fi
if [ $rand = 7 ]; then
    i "Enter privileged EXEC mode"
    input "Switch>" "enable" 
    i "Assign a hostname to the switch based on the Addressing Table"
    input "Switch#" "configure terminal"
    c "Enter configuration commands, one per line. End with CNTL/Z."
    c "Note that you'll want to change the hostname to S1"
    input "Switch(config)#" "hostname S1" 
    c "Now, disable DNS lookup."
    input "S1(config)#" "no ip domain-lookup" 
    c "Configure and enable the SVI interface for VLAN 1."
    input "S1(config)#" "interface vlan 1" 
    c "The IP address will be 192.168.1.2."
    input "S1(config-if)#" "ip address 192.168.1.2 255.255.255.0" 
    input "S1(config-if)#" "no shutdown"
    input "Use end to finish everything." 
    input "S1(config-if)#" "end"
    c "*Mar 1 00:07:59:048: %SYS-5-CONFIG_I: Configured from console by console"
    i "Once again, enter privileged EXEC mode"
    input "S1>" "enable"
    i "Find the MAC address information"
    input "S1#" "show interfaces vlan 1"
    i "If you were to enter this command on a switch, you would have received:"
    i "The MAC address of the switch"
    i "IP address of the switch"
    i "MTU and additional information"
    i "See: http://pastebin.com/Q0pamMHz"
    i "."
    i "Now find out what systems are connected to the switch"
    input "S1#" "show arp"
    i "This command will show all of the devices IP and MAC addresses that are connected to the switch"
    i "See: http://pastebin.com/UktqHyWB"
    i "."
    i "Now show the mac address table"
    input "S1#" "show mac address-table"
    i "This command shows all of the MAC addresses and the ports they're assigned to"
    i "See: http://pastebin.com/jMUvvgC9"
    i "."
    i "Type exit to finish."
    input "S1#" "exit"
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

