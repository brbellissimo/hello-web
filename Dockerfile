FROM scratch
LABEL name=hello-web
LABEL version=0.1
ADD hello-web /
EXPOSE 80
CMD ["/hello-web"]