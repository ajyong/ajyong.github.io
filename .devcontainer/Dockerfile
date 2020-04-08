FROM dragas/nikola:alpine

EXPOSE 8000

RUN apk --no-cache add openssh-client

RUN pip3 install -U pip
RUN pip3 install flake8 black && rm -Rf /root/.cache/
