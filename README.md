# Sping Angular Docker Project Template

* **Objective** - To create a product...
* **Purpose** - To gain familiarity the following features...

## Stopping Processes from Interfering With Run
* If your application cannot run because something is occupying a port, use this command with the respective port number specified:
    * **OSX and Linux**
        * ``kill -kill `lsof -t -i tcp:8080` ``
    * **Windows**
        * _For use in command line_ (**cmd**):
            * `for /f "tokens=5" %a in ('netstat -aon ^| find ":8080" ^| find "LISTENING"') do taskkill /f /pid %a`
        * _For use in bat-file_:
            * `for /f "tokens=5" %%a in ('netstat -aon ^| find ":8080" ^| find "LISTENING"') do taskkill /f /pid %%a`

## Running Web Server (Containerized)
* **Running this project from a container requires 1 software installation**
    * [Docker](https://curriculeon.github.io/Curriculeon/lectures/containerization/docker/installation/content.html)
* Execute the command below to build an image of the containerized application.
    * `docker build -t my-test-app .`
* Execute the command below to run an instance of the containerized application
    * `docker run -p 8080:8080 my-test-app`
* Execute the command below to echo the docker machine's IP
    * `docker-machine ip`
* Replacing `localhost` with the ip of the docker machine, navigate to `localhost:8080/SpringBootCRUDApp/login`
    * For example `192.168.12.100:8080/login`


## Running Web Server (Locally)
* **Running this project from locally requires 4 software installations**
    * [Java](https://curriculeon.github.io/Curriculeon/lectures/java/installation/content.html)
    * [Maven](https://curriculeon.github.io/Curriculeon/lectures/java/build-automation/maven/installation/content.html)
    * [NodeJs](https://curriculeon.github.io/Curriculeon/lectures/nodejs/installation/content.html)
    * [Angular](https://curriculeon.github.io/Curriculeon/lectures/angular/installation/content.html)
    * [GitBash](https://curriculeon.github.io/Curriculeon/lectures/version-control-systems/git/installation/content.html) is recommended for Windows users
    
* Execute the command below to run the project locally
    * `mvn spring-boot:run`


#### Testing Web Server via Browser
* From a browser, navigate to `http://localhost:8080/SpringBootCRUDApp/h2-console/` and log into the database.

#### Testing Web Server via Postman
* Launch the [Postman](https://curriculeon.github.io/Curriculeon/lectures/java/web/postman/installation/content.html) app and enter the URI `http://localhost:8080/SpringBootCRUDApp` and hit Send.









## How to Download

#### Part 1 - Forking the Project
* To _fork_ the project, click the `Fork` button located at the top right of the project.


#### Part 2 - Navigating to _forked_ Repository
* Navigate to your github profile to find the _newly forked repository_.
* Copy the URL of the project to the clipboard.

#### Part 3 - Cloning _forked_ repository
* Clone the repository from **your account** into the `~/dev` directory.
    * if you do not have a `~/dev` directory, make one by executing the following command:
        * `mkdir ~/dev`
    * navigate to the `~/dev` directory by executing the following command:
        * `cd ~/dev`
    * clone the project by executing the following command:
        * `git clone https://github.com/MYUSERNAME/NAMEOFPROJECT`

#### Part 4 - Check Build
* Ensure that the tests run upon opening the project.
    * You should see `Tests Failed: ${number_of_tests} of ${number_of_tests} tests`







## How to Submit

#### Part 1 -  _Pushing_ local changes to remote repository
* from a _terminal_ navigate to the root directory of the _cloned_ project.
* from the root directory of the project, execute the following commands:
    * add all changes
        * `git add .`
    * commit changes to be pushed
        * `git commit -m 'I have added changes'`
    * push changes to your repository
        * `git push -u origin master`

#### Part 2 - Submitting assignment
* from the browser, navigate to the _forked_ project from **your** github account.
* click the `Pull Requests` tab.
* select `New Pull Request`
