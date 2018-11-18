FROM ubuntu:bionic
COPY run.sh ./
RUN \
	chmod +x ./run.sh && \
	apt-get update && \
	apt-get -y install tzdata wget curl unzip fonts-crosextra-carlito && \
	apt-get -y --no-install-recommends install texlive-xetex
CMD ./run.sh
