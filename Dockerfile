#TODO File anpassen
#Get OpenJDK Image
FROM tomcat:alpine

#Make dir for war file
RUN mkdir /

#Set working dir to new folder
WORKDIR 

#Copy war-file to folder
