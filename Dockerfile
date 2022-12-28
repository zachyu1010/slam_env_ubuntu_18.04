FROM ubuntu:18.04
RUN apt-get update
Run bash -c 'echo -e "Y\n" | apt-get install g++'
Run bash -c 'echo -e "Y\n" | apt-get install cmake'
Run bash -c 'echo -e "Y\n" | apt-get install libeigen3-dev'
Run bash -c 'echo -e "Y\n" | apt-get install vim'
Run bash -c 'echo -e "Y\n" | apt-get install libglew-dev'
Run bash -c 'apt-get install make'
Run bash -c 'echo -e "Y\n" | apt-get install python'
Run bash -c 'echo -e "Y\n" | apt-get install python-dev'
Run bash -c 'echo -e "Y\n" | apt-get install python-pip'
RUN apt-get install -y x11-apps
