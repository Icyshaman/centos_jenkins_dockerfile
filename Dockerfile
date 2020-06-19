FROM centos:latest

RUN yum install sudo -y
RUN sudo yum install wget git python36 java-11-openjdk.x86_64 openssh-server openssh-clients epel-release -y
RUN sudo yum install sshpass -y
RUN sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
RUN sudo yum install jenkins -y
RUN echo -e "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins

CMD ["java", "-jar", "/usr/lib/jenkins/jenkins.war"]
