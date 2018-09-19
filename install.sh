file="/etc/monit.conf"
if [ ! -f "$file" ] 
then
    echo monit not start, I will start it;
    sudo yum install monit -y;
    sudo cp ./monit/monit.conf /etc/monit.conf -f;
    sudo chmod 0700 /etc/monitrc;
    sudo systemctl start monit.service;
fi

