FROM python:3.8-slim

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh kocom_light.conf.example kocom_light.py /
RUN mv /kocom_light.conf.example /kocom_light.conf

# Install requirements for add-on
RUN python3 -m pip install pyserial
RUN python3 -m pip install paho-mqtt
RUN python3 -m pip install typing_extensions

WORKDIR /share

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
