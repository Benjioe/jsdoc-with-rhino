FROM openjdk:7-alpine
WORKDIR /usr/src

COPY getting-start/ .

RUN apk update && \
    apk upgrade && \
    apk add git

RUN git clone --single-branch --branch releases/3.3 https://github.com/jsdoc/jsdoc.git


RUN chmod +x ./jsdoc/jsdoc

ENTRYPOINT ["./jsdoc/jsdoc"]
CMD ["./app", "-r",  "-d",  "./app/out"]