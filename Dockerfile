FROM ubuntu:18.04
RUN apt-get update
Run bash -c 'echo -e "Y\n" | apt-get install g++'
Run bash -c 'echo -e "Y\n" | apt-get install cmake'
Run bash -c 'echo -e "Y\n" | apt-get install libeigen3-dev'
Run bash -c 'echo -e "Y\n" | apt-get install vim'
