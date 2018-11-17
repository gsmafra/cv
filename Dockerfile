FROM ubuntu:latest
RUN \
	apt-get update  && \
	apt-get -y install tzdata && \
	apt-get -y install wget && \
	apt-get -y install unzip && \
	apt-get -y --no-install-recommends install texlive-xetex && \
	wget https://github.com/gsmafra/cv-en-2p/archive/master.zip
