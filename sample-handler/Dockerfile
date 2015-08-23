FROM nihilogist/zeromq-java:latest

COPY handler /handler

CMD cd /handler && java -Djava.library.path=/usr/local/lib -jar samplehandler-1.0-SNAPSHOT-jar-with-dependencies.jar
