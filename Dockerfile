FROM phusion/baseimage:master

RUN apt-get update && apt-get install -y unzip

ADD https://releases.hashicorp.com/vault/0.10.0/vault_0.10.0_linux_amd64.zip /opt/

RUN unzip /opt/vault_0.10.0_linux_amd64.zip -d /usr/local/bin/

COPY vault-store /opt/vault/vault-store
COPY unseal.sh /opt/vault
COPY vault /etc/init.d/vault

RUN /bin/bash -c 'chmod +x /opt/vault/unseal.sh && chmod +x /etc/init.d/vault'
EXPOSE 8200
CMD /opt/vault/unseal.sh
