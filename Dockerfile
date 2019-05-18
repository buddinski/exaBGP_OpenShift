FROM fedora:29
 #EXPOSE 1179
RUN dnf -y install python-pip
RUN pip install exabgp
#RUN mkfifo /run/exabgp.{in,out}
#RUN chmod 600 /run/exabgp.{in,out}

CMD /bin/exabgp /config/exabgp/exabgp.conf --env /config/templates/exabgp.env
