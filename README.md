# vbee_monit_monitor
1. Tải git này về
2. Thay đổi thông tin về bot telegram ở file telegramrc
3. thay đỏi thông tin ổ cứng path ổ cứng ở file disk-tts-46.conf /dev/mapper/home-lvol0
4. docker-compose up -d
5. Nếu bên  ngoài docker mà có nhiều ổ muốn check ổ nào thì mount ổ đó vào
+ dùng hàm df để biết các ổ cần check
- /dev/sdc1      5285734828 5285718444         0 100% /data/audio
- /dev/sdg1      1110540896 1026408316  27650484  98% /data/sach.hcm
khi đó ta cần mount như sau
volumes:
  - "/data.docker:/etc/data.docker"
  - "/data/sach.hcm:/data/sach.hcm"

File check cần thêm
check device Disk-43.239.223.34-sdc1 with path /dev/sdc1
    if space usage > 80% then exec "/bin/sh /etc/monit2telegram.sh" else if succeeded then exec "/bin/sh /etc/monit2telegram.sh"
