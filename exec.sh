rm -rf /opt/webcordautoupdater
touch ~/opt/webcord/webcordautoupdater.txt
echo $ver >> /opt/webcord/webcordautoupdater.txt
mkdir /opt/webcord
wget https://raw.githubusercontent.com/MiMillieuh/Webcord-Wayland/main/webcord.sh -O /opt/webcord/updater.sh
mkdir /tmp/webcord
        wget -qO - https://api.github.com/repos/SpacingBat3/WebCord/releases/latest \
| grep browser_download_url \
| grep x86_64.rpm\
| cut -d  '"' -f 4  \
| wget -cqi - -O /tmp/webcord/webcord.rpm
sudo rpm -ivh /tmp/webcord/webcord.rpm
rm -rf /tmp/webcord
wget https://raw.githubusercontent.com/MiMillieuh/Webcord-Wayland/main/webcord.desktop -O /usr/share/applications/webcord.desktop
exec webcord
