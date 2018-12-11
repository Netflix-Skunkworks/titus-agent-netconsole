FROM ubuntu:latest
RUN apt update
RUN apt install -y \
	dh-make \
	devscripts \
	vim
ENV DEBEMAIL="titus-ops@netflix.com"
ENV DEBFULLNAME="Gabriel Hartmann"
COPY build.sh /build.sh
CMD ["/build.sh"]
