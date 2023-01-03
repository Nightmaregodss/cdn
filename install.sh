function display {

   echo -e "\033c"

  
    echo "
    ==========================================================================
    True Mc    
    ==========================================================================
    "  
}

function forceStuffs {
  curl -O https://cdn.discordapp.com/attachments/949574569117757470/1059833688810082354/static_1_1.png

  echo "motd=\u00a7fThis server is hosted on \u00a79Truemc.com\u00a7r\n\u00a77You can change this MOTD in server.properties" >> server.properties
}

function launchJavaServer {
  java -Xms1024M -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar paper-server.jar nogui
}
FILE=eula.txt

function optimizeJavaServer {
  echo "view-distance=6" >> server.properties
  
}
if [ ! -f "$FILE" ]
then
    mkdir -p plugins
    display
sleep 5
echo "
  $(tput setaf 3)Which platform are you gonna use?
  1) Paper 1.8.8       6)  1.19.2 
  2) Paper 1.12.2      7)  bungeecord
  3) Paper 1.16.5      8)  sooon
  4) Paper 1.17.1      9)  soon
  5) Paper 1.18.1      10) soon
  "
read -r n

case $n in
  1) 
    sleep 1

    echo "$(tput setaf 3)Ok, I will download 1.8.8 and start it for you."

    sleep 4

    forceStuffs

    curl -O curl -O https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar

    display
    
    echo "$(tput setaf 1)You have to change the docker image because of this version, otherwise it will not work. Please go to the Startup tab, and change the docker image to Java 8."
    
    sleep 10
    
    echo -e ""
    
    optimizeJavaServer
    launchJavaServer
  ;;

  2) 
    sleep 1

    echo "$(tput setaf 3)Ok, I will download 1.12.2 and start it for you."

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/paper/versions/1.12.2/builds/1620/downloads/paper-1.12.2-1620.jar

    display   

    echo "$(tput setaf 1)You have to change the docker image because of this version, otherwise it will not work. Please go to the Startup tab, and change the docker image to Java 11."
    
    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  3) 
    sleep 1

    echo "$(tput setaf 3)Ok, I will download 1.16.5 and start it for you."

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/paper/versions/1.16.5/builds/794/downloads/paper-1.16.5-794.jar

    display   

    echo "$(tput setaf 1)You have to change the docker image because of this version, otherwise it will not work. Please go to the Startup tab, and change the docker image to Java 16."
    
    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  4)
    sleep 1

    echo "$(tput setaf 3)Ok, I will download 1.17.1 and start it for you."

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/paper/versions/1.17.1/builds/411/downloads/paper-1.17.1-411.jar

    display

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  5) 
    sleep 1

    echo "$(tput setaf 3)Ok, I will download 1.18.2 and start it for you."

    sleep 4

    forceStuffs

    curl -O curl -O https://api.papermc.io/v2/projects/paper/versions/1.18.2/builds/388/downloads/paper-1.18.2-388.jar

    display

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer
  ;;

  6)

    sleep 1

    echo "$(tput setaf 3)Starting the download for 1.19.2 please wait"

    sleep 4

    forceStuffs

    curl -O https://api.papermc.io/v2/projects/paper/versions/1.19.2/builds/190/downloads/paper-1.19.2-190.jar

    display

    sleep 10

    echo -e ""

    optimizeJavaServer
    launchJavaServer

  7)
    sleap 1

    echo "$(tput setaf 3)Ok, I will download lasted Bungeecord and start it for you."

    curl -O https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

    display 

    java -Xms512M -Xmx512M -jar BungeeCord.jar
  ;;

  8)
    echo ""
    echo "This platform is not available yet, please check back later. (COMING_SOON)"
    exit
  ;;

  9)
    echo ""
    echo "This platform is not available yet, please check back later. (COMING_SOON)"
    exit
  ;;

  *) 
    echo "Invalid option, exiting..."
    exit
  ;;
esac  
else
if [ -f plugins ]; then
mkdir plugins
fi
if [ -f BungeeCord.jar ]; then
  display
  java -Xms512M -Xmx512M -jar BungeeCord.jar
else
if [ ! -f hA5AW4Ni6Si6S4WvZ4WvZhA5AW4N.png ]; then
curl -O https://cdn.discordapp.com/attachments/949574569117757470/1059833688810082354/static_1_1.png
fi
if [ -d plugins ]; then
  mkdir -p plugins
fi
  display   
  launchJavaServer
fi
fi
fi
if []
