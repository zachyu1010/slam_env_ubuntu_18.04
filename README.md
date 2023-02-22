base command:
    1. from container to image
        $docker container commit 6372e49c75ba ubuntu_18.04_slam_env:v0.2_sophus
    2. list/rm image
        $docker image ls
        $docker image rm image_id
    3. upload image to dockerhub registry
        $docker push zachyu1010/ubuntu_18.04_slam_env:v0.2_sophus

the base docker image:
    ver 0.0, ubuntu:18.04

install pckages
    apt-get update
    apt-get install -y g++'
    apt-get install -y cmake'
    apt-get install -y libeigen3-dev'
    apt-get install -y vim'
    apt-get install -y libglew-dev'
    apt-get install -y make'
    apt-get install -y python'
    apt-get install -y python-dev'
    apt-get install -y python-pip'
    apt-get install -y x11-apps
    apt-get install -y libglew-dev
    apt-get install libgl1-mesa-dev
    apt-get install libpython2.7-dev
    apt-get install python
    apt-get install doxygen
    apt-get install -y gdb
    apt-get install locales

language settings:
    .bashrc:
        export LC_ALL=en_US.UTF-8
        export LANG=en_US.UTF-8
        export LANGUAGE=en_US.UTF-8
    commands:
        $locale-gen en_US.UTF-8
        $update-locale LANG=en_US.UTF-8
        $reboot

host mac x11 setting:
    1. install xquartz 2.7.8
    2. open -a XQuartz -> Security -> Allow connection from network clients
    3. restart computer
    4. open -a XQuartz
    5. check, ps aux | grep Xquartz, /opt/X11/bin/Xquartz :0 -listen tcp
    6. xhost + (after restart of X11)
    7. test X11 forwarding and run slambook2/ch3
    7.1 $ docker pull sshipway/xclock
    7.2 $ ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
    7.3 cmd:
        docker run -v ~/.Xauthority:/root/.Xauthority -e DISPLAY=docker.for.mac.host.internal:0 sshipway/xclock

Tutorial library:
    ch3: make and install Pangolin library in slambook2/3rdparty folder
    ch4: make and install Sophus libray in slambook2/3rdparty folder

run:
    docker run -it -e DISPLAY=$ip:0 -v ~/project/slambook2:/project/slambook2 zachyu1010/ubuntu_18.04_slam_env:v0.1_x11
    docker run -it -e DISPLAY=$ip:0 -v ~/project/slambook2:/project/slambook2 zachyu1010/ubuntu_18.04_slam_env:v0.2_sophus


