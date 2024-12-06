FROM python:3

WORKDIR /opt/cvd_mirror

RUN pip install --no-cache-dir cvdupdate
RUN cvd config set --dbdir /opt/cvd_mirror
CMD [ "cvd", "update" ]
