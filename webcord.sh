mkdir ~/.cache/webcordautoupdater


wget -qO - https://api.github.com/repos/SpacingBat3/WebCord/releases/latest \
| ver= grep tag_name \

verinst= cat ~/.cache/webcordautoupdater

if [ $var != $verinst ]
then
mkdir /tmp/webcord
        wget -qO - https://api.github.com/repos/SpacingBat3/WebCord/releases/latest \
| grep browser_download_url \
| grep x86_64.rpm\
| cut -d  '"' -f 4  \
| wget -cqi - -O /tmp/webcord/webcord.rpm
rpm -ivh /tmp/webcord/webcord.rpm
rm -rf /tmp/webcord

fi

echo $ver

mkdir ~/.cache


rpm -ivh


rm -rf /tmp/webcord


