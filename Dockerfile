# node with gcp
FROM node
MAINTAINER Choi KyuWoo <apple@paio.co.kr>
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN curl https://sdk.cloud.google.com | bash
RUN apt-get update \
&& apt-get -y install python-openssl \
&& rm -rf /var/lib/apt/lists/*
RUN npm install -g bower gulp
ENV CLOUDSDK_PYTHON_SITEPACKAGES 1
ENV PATH /root/google-cloud-sdk/bin:$PATH
CMD ["/bin/bash"]
