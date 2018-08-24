FROM debian:stable

RUN apt update && apt install git devscripts -y
RUN git clone https://github.com/mpv-player/mpv-build
WORKDIR /mpv-build
RUN mk-build-deps debian/control -i --tool='apt -y'
RUN bash rebuild -j4

CMD /bin/bash
