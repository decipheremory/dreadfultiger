FROM fedora:23
RUN dnf update --assumeyes && dnf install --assumeyes sudo git npm nodejs wget && dnf update --assumeyes && dnf clean all
COPY install.sh /opt/dreadfultiger/install.sh
COPY init.sh /opt/dreadfultiger/sbin/init
COPY setup.sh /opt/dreadfultiger/bin/setup
COPY config /opt/dreadfultiger/lib/config
RUN bash /opt/dreadfultiger/install.sh
ENV LUSER="emory" GIT_NAME="Emory Merryman" GIT_EMAIL="emory.merryman@deciphernow.com" GIT_URL="git@github.com:decipheremory/dreadfultiger.git" GIT_BRANCH_PARENT="master" GIT_BRANCH_CHILD=""
VOLUME /opt/dreadfultiger/private
CMD ["/opt/dreadfultiger/sbin/init"]
