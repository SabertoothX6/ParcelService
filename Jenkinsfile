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
              sh "docker rmi -f parcelservice"
          }
          //Build new container with image parcelservice
          sh "docker build -t parcelservice-server ."
      }
      else
      {
          //Remove the previous build image
          bat "docker rmi parcelservice-server"
          bat "docker build -t parcelservice-server ."
      }

   }
   /*stage('Run ParcelService-Server')
   {
      sh "docker run -d -p 8443:8443 --name=rest parcelservice-server java -jar ParSer-Server-1.0.jar"
   }*/
}
