# jenkins-centos_dockerfile_and_intelligent_webserver_deployment
>**Requirements**:
* docker

* git

* github account
<br><br>
>**How to set up**:
* Download [Dockerfile](https://github.com/Icyshaman/jenkins-centos_dockerfile_and_intelligent_webserver_deployment/blob/master/Dockerfile). 
  * ![](Images/img1_Dockerfile.jpg)
  <br>

  [Dockerfile](https://github.com/Icyshaman/jenkins-centos_dockerfile_and_intelligent_webserver_deployment/blob/master/Dockerfile) will help in creation of docker image which will have jenkins pre installed in it and when we launch a container using that docker image it will automatically start Jenkins service.
<br><br>
* Build docker image using [Dockerfile](https://github.com/Icyshaman/jenkins-centos_dockerfile_and_intelligent_webserver_deployment/blob/master/Dockerfile).
  * ![](Images/img2_image_creation.jpg)
  <br><br>
  * ![](Images/img3_image_creation.jpg)
  <br>

  Using terminal navigate to the folder where [Dockerfile](https://github.com/Icyshaman/jenkins-centos_dockerfile_and_intelligent_webserver_deployment/blob/master/Dockerfile) is stored and run command **docker build -t \<name you want to assign to image>:\<version>**.
<br><br>
* Using created docker image launch a container.
  * ![](Images/img4_jenkos.jpg)
  <br>

  Run command **docker run -dit -p \<port no. of host:port no. you want to expose> --name \<name of container> \<image name>:\<version>**.
<br><br>
* Navigate to **\<IP Address of host>:\<Port No. through which you expose jenkin service running inside container>** using web browser.
  * ![](Images/img5_jenkins.jpg)
  <br><br>
  * ![](Images/img6_jenkins.jpg)
  <br>

  Unlock jenkins using administrator password which you can find in terminal message received when you launched the container.
<br><br>
* Update password of Jenkins.
<br><br>
* Install Git and Email Extension plugins.
<br><br>
* Configure E-mail Notification.
<br><br>
* Clone github repository to your local system.
<br><br>
* Configure git hooks.
  * ![](Images/post_commit.jpg)
  <br>

  It will push the repo to github, whenever developer run git commit command and trigger jenkins job1.
<br><br>  
* Create Job1 and configure it.
  * ![](Images/img7_job1.jpg)
  <br><br>
  * ![](Images/img8_job1.jpg)
  <br><br>
  * ![](Images/img9_job1.jpg)
  <br>

  Job 1 will download the repo locally to the container when developer push repo to github and trigger job2 once job1 executed successfully.
<br><br>
* Create Job2 and configure it.
  * ![](Images/img10_job2.jpg)
  <br><br>
  * ![](Images/img11_job2.jpg)
  <br>

  Job2 will analyze the code and check whether it is php code or html code, and based on the result it will launch an appropriate container for the code and trigger job3.
<br><br>
* Create Job3 and configure it.
  * ![](Images/img12_job3.jpg)
  <br><br>
  * ![](Images/img13_job3.jpg)
  <br>

  Job3 will test whether set up is working or not and if set is not working then trigger job4.
<br><br>
* Create Job4 and configure it. 
  * ![](Images/img14_job4.jpg)
  <br><br>
  * ![](Images/img15_job4.jpg)
  <br><br>
  * ![](Images/img16_job4.jpg)
  <br><br>
  * ![](Images/img17_job4.jpg)
  <br>

  Job4 will send an email to developer with error code.
<br><br>
* Create Job5 and configure it.
  * ![](Images/img18_job5.jpg)
  <br><br>
  * ![](Images/img19_job5.jpg)
  <br>

  Job5 will check whether the container in which webserver is being deployed is running or not and if not then it will try to start it.
<br><br>
>**How to access web page**:
* Navigate to **http://\<IP Address of host>:1234/\<Name of web page>** using web browser.
  * ![](Images/img20_webserver.jpg)