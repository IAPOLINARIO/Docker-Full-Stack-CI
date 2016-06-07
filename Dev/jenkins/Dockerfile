FROM dev_jenkinsbase

USER root
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
# Install Gradle
RUN wget https://services.gradle.org/distributions/gradle-2.0-bin.zip
RUN unzip gradle-2.0-bin.zip
RUN mv gradle-2.0 /opt/
RUN rm gradle-2.0-bin.zip

#USER jenkins

COPY plugins.txt /var/jenkins_home/plugins.txt
RUN /usr/local/bin/plugins.sh /var/jenkins_home/plugins.txt

ENV PATH $PATH:$GRADLE_HOME/bin

# Adding default Jenkins Jobs
COPY jobs/ /usr/share/jenkins/ref/jobs/

############################################
# Configure Jenkins
############################################
COPY config/* /usr/share/jenkins/ref/

#USER ROOT
RUN chmod -R 700 /usr/share/jenkins/ref/
 
 