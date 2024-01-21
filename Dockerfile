#Build image from ubuntu base image
FROM ubuntu  
#Update apt and install apache2
RUN apt update 
RUN apt install -y apache2 
RUN apt install -y apache2-utils 
RUN apt clean 
#Expose port 80
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
