FROM dragas/nikola:alpine

EXPOSE 8000

RUN apk --no-cache add git-fast-import openssh-client

RUN pip3 install --upgrade pip
RUN pip3 install --upgrade pylint flake8 black "Nikola[extras]" && rm -Rf /root/.cache/
