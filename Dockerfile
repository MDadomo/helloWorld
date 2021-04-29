FROM java:8

RUN apt-get update

RUN apt-get install -y wget

RUN apt-get install -y iputils-ping

#CMD ["ping","127.0.1","-c","30"]

# ENTRYPOINT ["ping","-c","10"]
# CMD ["127.0.0.2"]

COPY testfile.txt /tmp/testfile.txt

ENV testVariable toto

ENTRYPOINT ["java", "HelloWorld"]
