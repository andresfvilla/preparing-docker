FROM ubuntu:14.04

#mariadb

RUN sudo apt-get install software-properties-common -y
RUN sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
RUN sudo add-apt-repository 'deb [arch-amd64, i386] http://nyc2.mirrors.digitalocean.com/mariadb/repo/10.1/ubuntu trusty main'; exit 0

RUN sudo apt-get update
RUN sudo apt-get install -y mariadb-server
RUN sudo service mysql start && sudo mysql_secure_installation

EXPOSE 13306
#phpmyadmin

#RUN sudo apt-get install php5-fpm php5-mysql php5-mcrypt

#RUN sudo php5enmod mcrypt
#RUN sudo service php5-fpm restart

#RUN sudo apt-get install phpmyadmin -y

#NGINX

#RUN sudo apt-get install nginx -y

#link the files in nginx to the repo versions

#RUN sudo ln -s /usr/share/phpmyadmin /usr/share/nginx/html

#RUN sudo service apache2 stop

#EXPOSE 80

#RUN sudo service nginx restart

#Sencha Cmd
#RUN wget http://cdn.sencha.com/cmd/6.0.2/no-jre/SenchaCmd-6.0.2-linux-amd64.sh.zip
#RUN unzip SenchaCmd-6.0.2-linux-amd64.sh.zip
#RUN sudo apt-get install default-jre
#RUN ./SenchaCmd-6.0.2.14-linux-amd64.sh

#alternative for sencha
#RUN curl -o /cmd.run.zip http://cdn.sencha.com/cmd/6.0.2.14/SenchaCmd-6.0.2.14-linux-amd64.sh.zip && \
    unzip -p /cmd.run.zip > /cmd-install.run && \
    chmod +x /cmd-install.run && \
    /cmd-install.run -q -dir /opt/Sencha/Cmd/6.0.2.14 && \
    rm /cmd-install.run /cmd.run.zip

#RUN source ~/.bash_profile
