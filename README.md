# centos_jenkins_dockerfile
>**Steps**:
* create a file named **Dockerfile** with following script
  
  ![](Images/1.jpg)
  
* run command **docker build -t < name you want to assign to image >:< version >**.
  
  ![](Images/2.jpg)
  
* run command **docker run -dit -p < port no. of host:port no. you want to expose > --name < name of container > < image name >:< version >**.
  
  ![](Images/3.jpg)
  
* By performing above task we can start jenkins service on docker container.

  ![](Images/4.jpg)
  
  ![](Images/5.jpg)
