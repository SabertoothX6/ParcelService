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
          script: "docker images -q parcelservice",
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
          //Remove the previous build image
          bat "docker rmi parcelservice-server"
          bat "docker build -t parcelservice-server ."
      }

   }
   /*stage('Run ParcelService-Server')
   {//TODO Befehl ändern
      sh "docker run -d -p 8083:80 --name=rest parcelservice"
   }*/
}
