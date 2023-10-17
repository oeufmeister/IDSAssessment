# Simple PHP Hello World server within a Docker container

This project is made for a technical assessment, to create a simple hello world server using PHP, and containerizing it using docker. I had used the '''php:8.2-apache''' image for the purpose of serving the PHP code.

# Prequisites
Be sure that you have the following software installed in your local device for local execution.
- Docker, find it in https://docs.docker.com/get-started/

# Running the container

1. Clone the files into your local machine. (You can use github desktop, git bash, or other methods)
2. Run your docker environment.
3. Build the docker image using the dockerfile.

- Run ```docker build -t <imageName> .``
Docker build is used for building docker images.
The flag '-t' is used for naming the image, you can replace <imageName> with an image name of your choice, for me, it was "helloworld".
The dot [.] at the end is used for specifying the directory the dockerfile is in, in this case, it is in the current working directory, hence the dot.

- Let the process run until it says it is finished.

4. Run the container in the docker environment

- Run ```docker run -p 80:80 <imageName>```
Docker run is used for running images which already exist in the local image cache.
```-p 80:80``` tells docker to use a port which the user specifies, the format is ```hostPort:containerPort```
<imageName> is used for specifying the name of the image to run, here I used the one I had already created previously, called "helloworld"

5. Open <ip:port> which has already been specified to docker before in the web browser
Here I opened localhost:80 which is the local URL and port I specified to docker in the run command.
