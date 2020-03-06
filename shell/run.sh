scp ./shell/post-receive root@101.133.226.217:/root/Repos/ORServer/hooks/
scp ./shell/openresty.service root@101.133.226.217:/usr/lib/systemd/system/
ssh root@101.133.226.217 chmod a+x /root/Repos/ORServer/hooks/post-receive
ssh root@101.133.226.217 systemctl enable openresty.service


echo "查看CPU型号"
ssh root@101.133.226.217 cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

echo "查看物理cpu个数"
ssh root@101.133.226.217 cat /proc/cpuinfo | grep "physical id" | sort | uniq|wc -l

echo "查看逻辑cpu的个数"
ssh root@101.133.226.217 cat /proc/cpuinfo | grep "processor" |wc -l

echo "查看cpu是几核"
ssh root@101.133.226.217 cat /proc/cpuinfo | grep "cores"|uniq


# scp ./shell/letsencrypt.service root@101.133.226.217:/usr/lib/systemd/system/
# scp ./shell/letsencrypt.timer root@101.133.226.217:/usr/lib/systemd/system/

# ssh root@101.133.226.217 systemctl enable letsencrypt.timer 
# ssh root@101.133.226.217 systemctl start letsencrypt.timer

# scp root@101.133.226.217:/etc/letsencrypt/live/101.133.226.217/fullchain.pem ~/Downloads/
# scp root@101.133.226.217:/etc/letsencrypt/live/101.133.226.217/privkey.pem ~/Downloads/
