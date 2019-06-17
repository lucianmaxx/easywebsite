removefiles(){
  
  rm ./start.sh
  
}

updatefiles(){

  startsh=$(curl https://raw.githubusercontent.com/Ironozd/easywebsite/master/start.sh 2> ./> start.sh)
  
}

removefiles
