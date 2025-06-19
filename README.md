#GNU/Linux
##Prerequisites
###Install required tools
`sudo apt install build-essential git`
###Install required libraries
Ubuntu
`sudo apt install libasound2-dev libx11-dev libxrandr-dev libxi-dev libgl1-mesa-dev libglu1-mesa-dev libxcursor-dev libxinerama-dev libwayland-dev libxkbcommon-dev`
see [Raylib Wiki](https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux) for other platforms
###Build Raylib from source
`git clone --depth 1 https://github.com/raysan5/raylib.git raylib
cd raylib/src/
make PLATFORM=PLATFORM_DESKTOP
sudo make install`
###Build & Run project
`git clone https://github.com/JakeDodd/coney.git
cd coney
make
./build/main`
To delete the executable and compiled library files:
`make clean`

#Windows

#Mac
