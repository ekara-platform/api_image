FROM lagoonplatform/ansible-docker-alpine:alpha1

RUN mkdir -p /opt/lagoon/bin
COPY ./go/api /opt/lagoon/bin/api

RUN mkdir -p /opt/lagoon/ansible
WORKDIR /opt/lagoon/ansible

ENTRYPOINT ["/opt/lagoon/bin/api"]


