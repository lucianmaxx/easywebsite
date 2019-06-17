removefiles(){
  
  rm ./start.sh
  
}

updatefiles(){

  startsh=$(curl https://raw.githubusercontent.com/Ironozd/easywebsite/master/start.sh 2> ./start> start.sh)
  
}

fixpermissions(){

  chmod 777 ./start.sh

}

removefiles
updatefiles
fixpermissions
