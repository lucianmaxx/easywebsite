
banner(){
printf "\n"
printf "\n"
printf "\e[1;77m ▀█▀ █▀▀█ █▀▀█ █▀▀▄ █▀▀█ ▀▀█ █▀▀▄  \e[0m\n"
printf "\e[1;77m ▒█░ █▄▄▀ █░░█ █░░█ █░░█ ▄▀░ █░░█  \e[0m\n"
printf "\e[1;77m ▄█▄ ▀░▀▀ ▀▀▀▀ ▀░░▀ ▀▀▀▀ ▀▀▀ ▀▀▀░  \e[0m\n"
printf "\n"
printf "\e[1;93m       .:.:.\e[0m\e[1;77m WebHosting Tool coded by:  @Ironozd \e[0m\e[1;93m.:.:.\e[0m\n"
printf "\n"
printf "  \e[101m\e[1;77m:: Disclaimer: Developers assume no liability and are not    ::\e[0m\n"
printf "  \e[101m\e[1;77m:: responsible for any misuse or damage caused by our tool. ::\e[0m\n"
printf "\n"

}

versioncheck(){
curversion=0.1
$(which sh) -c 'cat https://raw.githubusercontent.com/Ironozd/easywebsite/master/version.txt 2> /dev/null > version' &
echo $version


      
  
}


start(){

port="5872"

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
while [ true ]; do


sleep 10
printf "\e[1;92m[\e[0m*\e[1;92m] Refreshing the Website\e[0m\n"

done
}

banner
versioncheck
start
