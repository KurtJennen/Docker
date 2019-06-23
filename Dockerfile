# Version: 0.0.2
FROM ubuntu:16.04
LABEL maintainer="kurt.jennen@skynet.be"
RUN apt-get update; apt-get install -y nginx
RUN echo "Hi, I am in your container" > /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/nginx"]
# CMD [ "/bin/bash" ]
CMD ["-h"]
EXPOSE 80


