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
          sh "docker build -t parcelservice-frontend:${currentBuild.number} ."
      }
      else
      {
          //TODO other than unix
      }

   }
   stage('Deploy to Asset-Server')
   {
      //sh "sshpass -p 'vagrant' scp -o StrictHostKeyChecking=no ./web/js/*.js vagrant@192.168.56.100:/home/vagrant/js"
      sh "docker save parcelservice-frontend:${currentBuild.number} > frontend.${currentBuild.number}.tar"
      sh "sshpass -p 'vagrant' scp -o StrictHostKeyChecking=no frontend.${currentBuild.number}.tar vagrant@192.168.56.100:/home/vagrant/images"
   }
   /*stage('Run ParcelService-Server')
   {//TODO Befehl ändern
      sh "docker run -d -p 8083:80 --name=rest parcelservice"
   }*/
}
