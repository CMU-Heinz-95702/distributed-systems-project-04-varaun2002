# Use Tomcat 11 with Java 21 (Temurin)
FROM tomcat:11.0.0-M24-jdk21-temurin-noble

# Optional: Limit memory usage
ENV JAVA_OPTS="-Xmx300m"

# Expose port 8080 to be accessible
EXPOSE 8080

# Copy your WAR file into Tomcat's webapps directory
COPY ROOT.war /usr/local/tomcat/webapps/

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]