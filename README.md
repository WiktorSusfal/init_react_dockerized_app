1. Create new folder for React App files.
2. Reflect above change in docker-compose.yaml - place name of this folder in the mapping definition under "volumes" attriburte (as host directory)
3. After running "docker-compose -p project_name up --build", this folder will fill up with sample init React app files.
