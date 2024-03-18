# Docker

## Custom Image creation 

1. Create a folder "docker-node" 
2. Change directory `cd docker-node`
3. Open VS code here: `code .`
4. Inside VS code:
    
    - Open terminal 
    - `npm init` creates package.json
    - `npm i express` install express and node module gets created.
    - create "main.js" and write the required code.
5. Create a configuration file for image called `Dockerfile`and write required code
6. convert into image:

    - syntax : docker build -t(tag) imageKaNaam Dockerfile_ka_path
    - `docker build -t mera-nodejs-image .`


7. Run Image inside container

    - `docker run -it imageName`
        - it will create the container but data will not be visible through browser 
    - now you need to map the container port to local machine port, so that it can be accessible through the browser

    `docker run -it -p 8000:8000 imageName`

8. `docker exec -it containerId bash`

    - opens a new bash terminal inside the container whose id is specified in the command. 

9. `ls`

    - list all available files in the container.

10. `cat main.js`

    - cat show the content of main.js in the command line.

