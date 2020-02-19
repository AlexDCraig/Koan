### Local development

``go run koan.go``

Find the running app at 127.0.0.1:8080/index.

### Container development

#### Building image, running the container

``docker build . -t koan:v1 # Build the image``
``docker run -p 8080:8080 -itd [image ID from docker image ls] # Run the container.`` 

#### Publishing the container

``docker login``
``docker push alexdchoffer/koan:vx``  

#### Windows idiosyncrasy

If you absolutely must run Docker on a Windows machine, you can install the package manager Chocolatey and run ``choco install docker-machine`` and ``choco install virtualbox`` and that should get you there. A simple ``docker-machine restart`` can fix a ton of random errors. So can rebooting the host machine.
