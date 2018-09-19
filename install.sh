sudo rm -rf  /home/tts/monit;
sudo mv /home/tts/monit_code /home/tts/monit;
sudo chmod +x /home/tts/monit/bin/monit;
sudo chown root:root /home/tts/monit/conf/monitrc;
sudo chmod 0700 /home/tts/monit/conf/monitrc;
sudo chmod +x /home/tts/monit/monit2telegram.sh
sudo chmod +x /home/tts/monit/sendtelegram.sh

if ps aux | grep "monit -c /home/tts/monit/conf/monitrc" | grep -v grep >/dev/null ; then
	echo "monit ok";
else
		echo "monit not ok";
        ./home/tts/monit/bin/monit -c /home/tts/monit/conf/monitrc
fi

#./bin/monit -c /home/tts/monit/conf/monitrc  restart all
#./bin/monit stop -c /home/tts/monit/conf/monitrc all

#rm -rf /etc/monit.conf;rm -rf /etc/monitrc;
# file="/etc/monit.conf"
# if [ ! -f "$file" ] 
# then
#     echo monit not start, I will start it;
#     sudo yum install monit -y;
#     sudo cp ./monit/monitrc /etc/monitrc -f;
#     sudo cp ./monit/monit.conf /etc/monit.conf -f;
#     sudo chmod 0700 /etc/monitrc;
#     sudo systemctl start monit.service;
# fi
# sudo cp ./monit/monitrc /etc/monitrc -f;
# sudo cp ./monit/monit.conf /etc/monit.conf -f;
# sudo cp ./monit/monit.d/* /etc/monit.d/ -f;
# sudo systemctl reload monit.service;

