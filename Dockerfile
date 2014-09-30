FROM base/arch:latest
MAINTAINER: Michel Tu <orphee@gmail.com>

RUN pacman -Syu --noconfirm
RUN pacman -S nginx --noconfirm

# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx"]

# Define default command.
CMD ["nginx"]

# Expose ports.
EXPOSE 80
EXPOSE 443
