## BUILDING
##   (from project root directory)
##   $ docker build -t kladha-klatools-ng2 .
##
## RUNNING
##   $ docker run -p 3000:3000 kladha-klatools-ng2
##
## CONNECTING
##   Lookup the IP of your active docker host using:
##     $ docker-machine ip $(docker-machine active)
##   Connect to the container at DOCKER_IP:3000
##     replacing DOCKER_IP for the IP of your active docker host

FROM gcr.io/stacksmith-images/ubuntu-buildpack:14.04-r8

MAINTAINER Bitnami <containers@bitnami.com>

ENV STACKSMITH_STACK_ID="4ey8owz" \
    STACKSMITH_STACK_NAME="kladha/klatools-ng2" \
    STACKSMITH_STACK_PRIVATE="1"

RUN bitnami-pkg install node-6.3.0-0 --checksum f2997c421e45beb752673a531bf475231d183c30f7f8d5ec1a5fb68d39744d5f

ENV PATH=/opt/bitnami/node/bin:/opt/bitnami/python/bin:$PATH \
    NODE_PATH=/opt/bitnami/node/lib/node_modules

## STACKSMITH-END: Modifications below this line will be unchanged when regenerating

# Node base template
COPY . /app
WORKDIR /app

RUN npm install

CMD ["node"]
