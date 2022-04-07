FROM wordpress

RUN  apt-get update \
  && apt-get install -y wget tar \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://shadowd.zecure.org/files/shadowd_php-2.1.1.tar.gz \
    && mkdir -p /urs/share/shadowd/ \
    && tar -xf shadowd_php-2.1.1.tar.gz /usr/share/shadowd/ \
    && cp /usr/share/shadowd/shadowd_php-2.1.1 /usr/share/shadowd/php