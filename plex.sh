#!/user/bin/env bash
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

apt-get install -y apt-transport-https
curl https://downloads.plex.tv/plex-keys/PlexSign.key | sudo apt-key add
echo deb https://downloads.plex.tv/repo/deb public main | sudo tee /etc/apt/sources.list.d/plexmediaserver.list
apt-get update
apt-get install -y plexmediaserver
