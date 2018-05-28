node {
   stage('Preparation') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/sabertoothx6/ParcelService.git'
   }
   stage('Build Docker Image')
   {
      if(isUnix())
      {
          //Create Variable that holds the info if docker image exists
          IMAGE_EXISTS = sh(
          script: "docker images -q parcelservice-frontend",
          returnStatus : true)
          //Remove the previous build image if it was build before
          if(IMAGE_EXISTS!="")
          {
              sh "docker rmi -f parcelservice-frontend"
          }
          //Build new container with image parcelservice-frontend
          sh "docker build -t parcelservice-frontend ."
      }
      else
      {
          //TODO other than unix
      }

   }
   stage('Deploy to Asset-Server')
   {
      sh "mv ./web/js/*.js /home/archy/vagrant-example/www/html/js/"
   }
   /*stage('Run ParcelService-Server')
   {//TODO Befehl ändern
      sh "docker run -d -p 8083:80 --name=rest parcelservice"
   }*/
}
