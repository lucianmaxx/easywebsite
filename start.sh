
banner(){
printf "\n"
printf "\n"
printf "\e[1;77m ▀█▀ █▀▀█ █▀▀█ █▀▀▄ █▀▀█ ▀▀█ █▀▀▄  \e[0m\n"
printf "\e[1;77m ▒█░ █▄▄▀ █░░█ █░░█ █░░█ ▄▀░ █░░█  \e[0m\n"
printf "\e[1;77m ▄█▄ ▀░▀▀ ▀▀▀▀ ▀░░▀ ▀▀▀▀ ▀▀▀ ▀▀▀░  \e[0m\n"
printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m WebHosting Tool coded by:  @Ironozd \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m:: Disclaimer: Developers have no responsibility of ::\e[0m\n"
printf "  \e[101m\e[1;77m:: usage of this program. Use with this condition. ::\e[0m\n"
printf "\n"

}

versioncheck(){
clear
curversion=0.8
version=$(curl https://raw.githubusercontent.com/Ironozd/easywebsite/master/version.txt)

if [ "$version" == "$curversion" ]; then
clear


else
  printf "  \e[101m\e[1;77m:: IMPORTANT UPDATE AVAILABLE    ::\e[0m\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Update starting in 5 seconds\e[0m\e[1;77m\n'
sleep 5
clear
startupdate
      fi
  
}

startupdate(){

  /bin/bash updater/updater.sh
  exit

}


start(){

port="5872"
  printf '\e[1;92m[\e[0m*\e[1;92m] Version Number %s Confirmed...\n' $curversion
  sleep 2
  printf "\e[1;92m[\e[0m*\e[1;92m] Contacting Serveo Tunnels...\n"
cd site/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting web server...\e[0m\n"
command -v ssh > /dev/null 2>&1 || { echo >&2 "Require SSH but it's not installed. Install it. Aborting."; exit 1; }
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
$(which sh) -c 'autossh -M 0 -R 80:localhost:'$port' serveo.net 2> /dev/null > sendlink ' &
printf "\n"
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf "\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Your Website link:\e[0m\e[1;77m %s \n' $send_link
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Your website is running,\e[0m\e[1;77m Press Ctrl + C to stop...\e[0m\n"
printf "\n"
printf "\n"
printf "\n"
while [ true ]; do


sleep 10
printf "\e[1;92m[\e[0m*\e[1;92m] Refreshing the Website\e[0m\n" > /dev/null 2>&1

done
}
versioncheck
banner
start
