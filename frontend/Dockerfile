# Specify the node base image
FROM bitnami/minideb:buster

# Maintainer
LABEL maintainer="jstagg@gmail.com"

# Install app dependencies
ADD My-App /My-App

# Ready the container
RUN install_packages                  && \
    install_packages less wget        && \
    install_packages build-essential  && \
    install_packages libdancer-perl   && \
    install_packages dos2unix         && \
    dos2unix /MyApp/*                 && \
    echo "DONE"

# Explicitly expose the port(s)
EXPOSE 3000

# Entrypoint from the SPA
ENTRYPOINT perl /My-App/bin/app.pl