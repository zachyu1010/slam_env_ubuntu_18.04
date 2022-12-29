ver 0.0, ubuntu:18.04
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
make and install Pangolin library in slambook2/3rdparty folder
host mac setting:
    1. install xquartz 2.7.8
    2. open -a XQuartz -> Security -> Allow connection from network clients
    3. restart computer
    4. open -a XQuartz
    5. check, ps aux | grep Xquartz, /opt/X11/bin/Xquartz :0 -listen tcp
    6. xhost + (after restart of X11)
    7. test X11 forwarding
    7.1 $ docker pull sshipway/xclock
    7.2 $ ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')

