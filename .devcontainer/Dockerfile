FROM dragas/nikola:alpine

EXPOSE 8000

RUN apk --no-cache add git-fast-import openssh-client

RUN pip3 install --upgrade --ignore-installed pip setuptools
RUN pip3 install --upgrade --ignore-installed pylint flake8 black "Nikola[extras]" && rm -Rf /root/.cache/
