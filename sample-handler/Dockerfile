FROM nihilogist/zeromq:latest

RUN apt-get -qq -y update && apt-get -y install pkg-config libtool autoconf automake default-jdk

RUN ln -s /usr/bin/libtoolize /usr/bin/libtool

RUN curl -L https://github.com/zeromq/jzmq/archive/v3.1.0.tar.gz | tar xz && cd jzmq* && ./autogen.sh && ./configure && make && make install

RUN ldconfig

COPY handler /handler

CMD cd /handler && java -Djava.library.path=/usr/local/lib -jar samplehandler-1.0-SNAPSHOT-jar-with-dependencies.jar
