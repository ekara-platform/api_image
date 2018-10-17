FROM lagoonplatform/ansible-docker-alpine:alpha1

RUN mkdir -p /opt/ekara/bin
COPY ./go/api /opt/ekara/bin/api

RUN mkdir -p /opt/ekara/ansible
WORKDIR /opt/ekara/ansible

ENTRYPOINT ["/opt/ekara/bin/api"]


