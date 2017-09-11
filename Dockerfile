FROM java:8
COPY src /home/root/javahelloworld/src
RUN mkdir /home/root/javahelloworld/bin
WORKDIR /home/root/javahelloworld/
RUN javac src/HelloWorld.java -d bin/
ENTRYPOINT ["java","-cp", "bin", "HelloWorld"] 
