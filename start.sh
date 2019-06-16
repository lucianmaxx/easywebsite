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
printf "  \e[101m\e[1;77m:: responsible for any misuse or damage caused by WebHosting Tool ::\e[0m\n"
printf "\n"

}

start(){

port="5872"

  printf "\e[1;92m[\e[0m*\e[1;92m] Starting php server...\n"
cd site/$server && php -S 127.0.0.1:$port > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Starting server...\e[0m\n"
command -v ssh > /dev/null 2>&1 || { echo >&2 "I require SSH but it's not installed. Install it. Aborting."; exit 1; }
if [[ -e sendlink ]]; then
rm -rf sendlink
fi
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port' serveo.net 2> /dev/null > sendlink ' &
printf "\n"
sleep 10
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf "\n"
printf '\n\e[1;93m[\e[0m\e[1;77m*\e[0m\e[1;93m] Send the direct link to target:\e[0m\e[1;77m %s \n' $send_link
printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Hosting your website,\e[0m\e[1;77m Press Ctrl + C to stop...\e[0m\n"
while [ true ]; do
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:'$port serveo.net 2> /dev/null > sendlink ' &
printf "\n"
sleep 4
done
}

banner
start
