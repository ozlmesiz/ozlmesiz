FROM ubuntu:xenial AS ubuntu-ortak
USER root
WORKDIR /root

RUN echo "deb [trusted=yes] http://192.168.13.173:8080/repos/thirdparty/ amd64/" >> /etc/apt/sources.list && \
    echo "deb [trusted=yes] http://192.168.13.173:8080/repos/interworking/ amd64/" >> /etc/apt/sources.list && \
    echo "deb [trusted=yes] http://192.168.13.173:8080/repos/cinar/ amd64/" >> /etc/apt/sources.list && \
    apt update

RUN apt install -y  certificate \
                    cinarloggersink \
                    cpp-jwt \
                    dkms \
                    dpdk \
                    libevent \
                    libicu55 \
                    libnghttp2-asio \
                    libprometheuscpp \
                    mongo-c-driver \
                    mongo-cxx-driver \
                    nlohmann-json \
                    python \
                    nano \
                    curl \
                    wget \
                    net-tools \
                    netcat \
                    iputils-ping \
                    g3log \
                    libpq5 \
                    sudo \
                    libreadline-dev \
                    libxerces-c-dev \
                    lix2x3asnpackage \
                    nettle-dev
                    
ADD http://192.168.13.47/nf_certificate/localhost.crt /opt/cinar/certificate
ADD http://192.168.13.47/nf_certificate/localhost.key /opt/cinar/certificate

RUN chmod 775 /opt/cinar/certificate/localhost*

FROM ubuntu-ortak AS ubuntu-dev
RUN apt install -y  zip \
                    unzip \
                    g++ \
                    make \
                    checkinstall \
                    gdb \
                    gdbserver \
                    default-jre \
                    doxygen \
                    gcovr \
                    cppcheck \
                    graphviz \
                    libpqxx-dev \
                    libsctp-dev \
                    libncurses5-dev \
                    libxml2-dev \
                    uuid-dev \
                    librabbitmq-dev \
                    rabbitmq-server \
                    libgnutls-dev \
                    libgcrypt-dev \
                    libidn11-dev \
                    libsctp-dev \
                    boost-all-dev \
                    cinarcodegenerator  \
                    cpp-jwt \
                    googletest \
                    rsync \
                    sshpass \
                    git 

FROM ubuntu-dev AS nfbuild
ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
RUN groupadd -g ${gid} ${group} && \
    useradd -c "Jenkins user" -d /home/${user} -u ${uid} -g ${gid} -m ${user} -p sagWlIWIC4dLo -s /bin/bash && \
    echo "jenkins  ALL=(ALL:ALL) NOPASSWD:ALL" >> /etc/sudoers
RUN mkdir -p /home/${user}/.ssh
RUN chown -R ${user}:${user} /home/${user}/.ssh
RUN echo "Host *.trabe.io\n\tStrictHostKeyChecking no\n" >> /home/${user}/.ssh/config
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
SHELL ["/bin/bash", "-c"]
RUN apt update && \
    apt install -y cinarasn1clib=1.0.4 \
                    libxmlpatch \
                    locales \
                    tinyxml2 \
                    pjsip \  
                    jrtplib ; \
    sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen ; \
    locale-gen ; \
    mkdir -p /var/log/cinar/ausf ; \
    mkdir -p /var/log/cinar/udm ; \
    mkdir -p /var/log/cinar/udr ; \
    echo "/opt/cinar/lib" > /etc/ld.so.conf.d/cinar.conf && /sbin/ldconfig && \
    echo "192.168.10.14 bitbucket.ulakhaberlesme.com.tr" >> /etc/hosts && \
    mkdir /opt/cinar/packages && \
    chown -R ${user}:${user} /opt/cinar
    