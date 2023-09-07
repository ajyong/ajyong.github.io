FROM dragas/nikola:alpine

EXPOSE 8000

RUN apk --no-cache add git-fast-import openssh-client

RUN pip3 install --upgrade --ignore-installed pip3 setuptools
RUN pip3 install --upgrade --ignore-installed pylint flake8 black "Nikola[extras]"

# Workaround until installing Nikola[extras] stops accidentally installing a
# Pillow version it can't use yet
RUN pip3 install --upgrade --ignore-installed Pillow==8.3.1 && rm -Rf /root/.cache/
