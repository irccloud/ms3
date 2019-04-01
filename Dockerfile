FROM python:2.7-alpine
WORKDIR "/tmp/workdir"
RUN apk update && apk add --no-cache --virtual .build-deps  \
                 build-base python-dev py-lxml libxml2-dev libxslt-dev
COPY . .
RUN pip install . && cp run.sh /bin/ms3.sh
CMD /bin/ms3.sh

