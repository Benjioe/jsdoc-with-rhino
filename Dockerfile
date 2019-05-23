FROM alpine
WORKDIR /usr/src

RUN apk update && \
    apk upgrade && \
    apk add git

RUN git clone --single-branch --branch releases/3.3 https://github.com/jsdoc/jsdoc.git
RUN git clone https://github.com/nijikokun/minami.git

COPY ./jsdoc-config.json .

CMD README=/usr/src/app/readme/README.md; if [ -f "$README" ]; then ./jsdoc/jsdoc /usr/src/app/scripts -c ./jsdoc-config.json -T $README else ./jsdoc/jsdoc /usr/src/app/scripts -c ./jsdoc-config.json; fi