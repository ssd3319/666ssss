FROM debian
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install ssh wget git unzip screen -y
RUN mkdir /run/sshd 
RUN echo 'wget -O install.sh https://youtube.xiaofeiya.tk/fly.io/bt/bt.sh && bash install.sh' >>/xf.sh
RUN echo 'rm -f /www/server/panel/data/admin_path.pl' >>/xf.sh
RUN echo '/usr/sbin/sshd -D' >>/xf.sh
RUN echo 'PermitRootLogin yes' >>  /etc/ssh/sshd_config 
RUN echo root:xiaofei|chpasswd
RUN chmod 755 /xf.sh
EXPOSE 8888
CMD  /xf.sh
