# mt5LinuxPython
How to connect Python to Metatrader on Linux

1) Clone repository. -----> git clone <b> url </b>
2) Change folder ---------> cd mt5LinuxPyhton
3) Build Docker Image. ---> sudo docker build -t <b>ImageName</b> .
4) Run Docker Container --> sudo docker run -d -p 8080:8080 -p 3000:3000 -v ${pwd}:/usr/src/app <b>imageName</b>
   Port 8080 for FastApi run server.
   Port 3000 for connect Python and Metatrader throug rpyc. 
5) Open terminal on container. I recomend use visual code and Dev Containers plugin.
6) Download and Install Metatrader for Linux from https://www.metatrader5.com/en/terminal/help/start_advanced/install_linux
7) Download python version. I use pyton 3.10 but you can test with other one .
8) Install python in wine ---> sudo wine unistaller  and follow wizzard.
9) Install rpyc in wine ---> sudo wine python -m pip install rpyc
10) Install Metatrader5 ---> sudo wine python -m pip install MetaTrader5
