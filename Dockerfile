FROM v2fly/v2fly-core:latest

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh