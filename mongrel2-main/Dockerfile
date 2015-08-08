FROM nihilogist/mongrel2-base:latest

#Copy necessary files over
COPY deployment /deployment
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Start mongrel2 and tail the error logs so that the container doesn't terminate
CMD ["/usr/bin/supervisord"]
