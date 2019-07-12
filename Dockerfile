FROM openjdk:8
WORKDIR /usr/src

RUN apk update && \
    apk upgrade && \
    apk add git

RUN git clone --single-branch --branch releases/3.3 https://github.com/jsdoc/jsdoc.git


RUN chmod +x ./jsdoc/jsdoc

ENTRYPOINT ["./jsdoc/jsdoc"]
CMD ["./app", "-r",  "-d",  "./app/out"]
