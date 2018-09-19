if ps aux | grep "monit" | grep -v grep >/dev/null ; then
    echo monit OK ;
else
    echo monit not start, I will start it;
    sudo yum install monit -y;
    sudo systemctl start monit.service
fi
sudo cp ./monit/monit.conf /etc/monit.conf -f