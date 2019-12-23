############################################################
# Dockerfile
############################################################

# Set the base image
FROM arm32v7/alpine:3.11.0

############################################################
# Configuration
############################################################
ENV VERSION "8.3.4"

############################################################
# Installation
############################################################
RUN apk --no-cache add bash &&\
    apk --no-cache add curl &&\
    apk --no-cache add lftp ca-certificates openssh bash curl
    
RUN npm install -g @angular/cli@${VERSION}

RUN mkdir -p /workdir
VOLUME /workdir
WORKDIR /workdir

############################################################
# Execution
############################################################
ENTRYPOINT []
CMD [ "ng", "--help"]
