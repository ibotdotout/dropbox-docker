FROM debian
MAINTAINER ibotdotout

RUN apt-get -y update
RUN apt-get -y install python wget

RUN wget -O dropbox.tar.gz "http://www.dropbox.com/download/?plat=lnx.x86_64" && tar -xvzf dropbox.tar.gz

ADD script script
CMD ["./script"]


