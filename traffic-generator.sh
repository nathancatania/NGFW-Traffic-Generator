#!/bin/bash
# **************************************************************************** #
# **************************** TRAFFIC GENERATOR ***************************** #
# ******************** For SD-WAN Application Visibility ********************* #
# **************************************************************************** #
# Last Modified: 2019-03-18  |  Version: 0.3                                   #
# By: Nathan Catania                                                           #
# Based on script by: Shay Dunevich                                            #
# !!!!!! REQUIRES WGET TO BE INSTALLED ON SYSTEM !!!!!!                        #
# !!!!!! REQUIRES youtube-dl TO BE INSTALLED ON SYSTEM !!!!!!                  #


# Loop forever
while true
do

## Delay each iteration of traffic gen by X minutes.
TIMER=1

## Delete old temporary files from last pass.
rm -rf /tmp/traffic-generator

## Create temporary directory to store files for this pass.
mkdir /tmp/traffic-generator
cd /tmp/traffic-generator

echo ''
echo -e '\e[1;36m>>>>>>>>>>>> \e[1;32mStarting To Download... \e[1;36m>>>>>>>>>>>>\e[0m'
echo '-------------------------------------------------'
echo ''

# Pause (seconds)
sleep 3

## START DOWNLOADS
###### GENERAL USER BROWSING ######
wget cnn.com
wget yahoo.com
wget facebook.com
wget salesforce.com
wget dropbox.com
wget twitter.com
wget aws.amazon.com
wget skype.com
wget office365.com
wget office.com
wget webex.com
wget ubuntu.com
wget wikipedia.org

## TinyPic
# ---> Uncomment additional lines to increase TinyPic app volume.
wget http://tinypic.com/view.php?pic=5o9w20&s=9#.WZxZSorhVmA
wget http://tinypic.com/view.php?pic=t9gp45&s=9#.WZxbGIrhVmA
#wget http://tinypic.com/view.php?pic=1zoatr7&s=9
#wget http://tinypic.com/view.php?pic=5o9w20&s=9#.WZxZSorhVmA
#wget http://tinypic.com/view.php?pic=t9gp45&s=9#.WZxbGIrhVmA
#wget http://tinypic.com/view.php?pic=1zoatr7&s=9
#wget http://tinypic.com/view.php?pic=5o9w20&s=9#.WZxZSorhVmA
#wget http://tinypic.com/view.php?pic=t9gp45&s=9#.WZxbGIrhVmA
#wget http://tinypic.com/view.php?pic=1zoatr7&s=9

# Reddit
# ---> Uncomment additional lines to increase Reddit app volume.
wget https://www.reddit.com
wget https://www.reddit.com/r/australia/
#wget https://www.reddit.com/r/melbourne/
#wget https://www.reddit.com/r/networking/
wget https://www.reddit.com/r/funny/
wget https://www.reddit.com/r/aww/
wget https://www.reddit.com/r/pics/
wget https://www.reddit.com/r/gifs/
wget https://www.reddit.com/r/Art/
#wget https://www.reddit.com/r/technology/
#wget https://www.reddit.com/r/science/
#wget https://www.reddit.com/r/technology/
wget https://www.reddit.com/r/eyebleach/

## Reddit images
wget https://i.redd.it/ku1neu504sh01.jpg

## Imgur
wget https://imgur.com/t/staff_picks/APNSXqc
wget https://imgur.com/t/staff_picks/rRWUaaV
wget https://imgur.com/t/staff_picks/TUnSdYT
wget https://imgur.com/t/staff_picks/WkAl6Uv
wget https://imgur.com/t/staff_picks/bZwVcXp
wget https://imgur.com/gallery/FuLM8QB

## Microsoft
wget "https://www.microsoft.com/en-au/"

## YouTube
youtube-dl --no-check-certificate "https://www.youtube.com/watch?v=Kkisx_ifQAw"
youtube-dl --no-check-certificate "https://www.youtube.com/watch?v=noVWtvT9748"
wget "https://www.youtube.com/"


## Netflix
# ---> Repeat for higher Netflix volume.
wget netflix.com

## GitHub
wget github.com

## LinkedIn
wget linkedin.com

## WHATSAPP-TCP
# -----> www.cdn.whatsapp.net
wget www.cdn.whatsapp.net

## INSTAGRAM
wget instagram.com

## Vimeo
wget vimeo.com

## OneDrive
wget onedrive.com

## Outlook
wget outlook.com

## Google
wget google.com

clear
echo ''
echo ' -------------------------------------------------'
echo -e ' \e[1;36m>>>>>>>>>>>> \e[1;33mResting for '$TIMER 'Minutes... \e[1;36m>>>>>>>>>>>>\e[0m'
echo ' -------------------------------------------------'
echo ''
echo ''

## Countdown Timer to repeat
secs=$(($TIMER * 60))
while [ $secs -gt 0 ]; do
   echo -n -e "\e[1;34m>>>>>>>>>>>> \e[1;32mNext Iteration in --> \e[1;31m$secs\033[0K \e[0mSeconds...\r \e "
   sleep 1
   : $((secs--))
done

## FIN - Repeat forever.
done
