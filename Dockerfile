FROM openjdk:8-jdk
RUN apt update
RUN apt install -y curl build-essential flex bison verilator
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list
RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | apt-key add
RUN apt-get update
RUN apt-get install sbt
RUN git clone https://github.com/shuosc/shuorv.git
RUN cd shuorv
RUN ls
RUN sbt test -Dsbt.rootdir=true
RUN cd ..
RUN rm -rf shuorv

