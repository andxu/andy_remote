1. run `mvn clean package` to generate gs-spring-boot-docker-0.1.0.jar in target folder
2. run `docker build . -t testimage` to generate the docker image
3. run `docker run -ti -p 7000:7000 -p 8080:8080 -p 8000:8000 testimage` to start the container
4. install `vscode-java-remote-debugger-0.0.1.vsix` in vscode, restart vscode and open current folder
5. open java file `src/main/java/hello/Application.java` and wait some time(less then 1 minute for java language server), then set breakpoint on line 19,  press F5
6. wait for breakpoint to be hit