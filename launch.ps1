docker build -t jsdoc-rhino .
docker run -v ./src:/usr/src/app jsdoc-rhino
start ./src/out/index.html