# INIT SETUP USING DOCKER

1. Create new folder for React App files.
2. Reflect above change in docker-compose.yaml - place name of this folder in the mapping definition under "volumes" attribute (as host directory)
3. Run "docker-compose -p project_name create".
4. Run "docker start docker_id". (docker_id is obtained using "docker ps -a" command)
5. On the container invoke: 
 - npm install -g create-react-app   (docker exec -it docker_id npm install -g create-react-app)
 - npx create-react-app .            (docker exec -it docker_id npx create-react-app .)
 - npm run start                     (docker exec -it docker_id npm run start)
6. This will enable React app on localhost:3000 with hot reloading mode. All changes from local directory created in 1st point will be immediately visible in the container.
7. The next time run only "docker start docker_id" and "docker exec -it docker_id npm run start"