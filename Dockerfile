FROM openjdk:8-jre-alpine

RUN mkdir /hath
ADD HentaiAtHome.jar /hath/HentaiAtHome.jar
ADD start.sh /hath/start.sh
RUN chmod +x /hath/start.sh

VOLUME /data

WORKDIR /hath
CMD /hath/start.sh

