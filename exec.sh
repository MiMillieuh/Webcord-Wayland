mkdir /opt/webcord
rm -rf /opt/webcord/webcordautoupdater.txt
cat > /opt/webcord/webcordautoupdater.txt
wget -qO - https://api.github.com/repos/SpacingBat3/WebCord/releases/latest \
| verdl= grep tag_name
echo "$verdl" > /opt/webcord/webcordautoupdater.txt
wget https://raw.githubusercontent.com/MiMillieuh/Webcord-Wayland/main/webcord.sh -O /opt/webcord/updater.sh
mkdir /tmp/webcord
        wget -qO - https://api.github.com/repos/SpacingBat3/WebCord/releases/latest \
| grep browser_download_url \
| grep x86_64.rpm\
| cut -d  '"' -f 4  \
| wget -cqi - -O /tmp/webcord/webcord.rpm
sudo rpm -ivhU /tmp/webcord/webcord.rpm
rm -rf /tmp/webcord
rm -rf /usr/share/applications/webcord.desktop
wget https://raw.githubusercontent.com/MiMillieuh/Webcord-Wayland/main/webcord.desktop -O /usr/share/applications/webcord.desktop
