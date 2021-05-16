FROM java:8
WORKDIR /
ADD *.jar *.jar
EXPOSE 8080
CMD java - jar *.jar
