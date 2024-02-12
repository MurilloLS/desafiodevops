# Use an official Tomcat runtime as the base image
FROM tomcat:latest

# Set the working directory in the container
WORKDIR /usr/local/tomcat/webapps/

# Remove the default ROOT application
RUN rm -rf ROOT

# Copy the war file into the Tomcat webapps directory
COPY desafiodevops.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 to the outside world
EXPOSE 8080

# Start Tomcat server
CMD ["catalina.sh", "run"]