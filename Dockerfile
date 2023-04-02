FROM python:3.10-alpine

# Socat needs to be installed for communication with the sidecar
RUN apk add socat

# This directory needs to exist (should match config.client_container_working_dir)
RUN mkdir -p /codequest

# This file is basically your entrypoint - put your stuff in here
COPY run.sh /codequest/run.sh

CMD ["/bin/sh", "-c", "/codequest/run.sh"]