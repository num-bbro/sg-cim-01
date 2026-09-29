FROM nginx:alpine AS docserver
# COPY ./dlms-cim/build/doc/html/ /usr/share/nginx/html
COPY ./dlms-cim/build/doc/latex/refman.pdf /usr/share/nginx/html/dlms-cim.pdf
COPY default.conf /etc/nginx/conf.d/default.conf

FROM fedora:32 AS demo
RUN dnf update -y \
        && dnf install -y gsoap
# WORKDIR /tmp/
# COPY ./dlms-cim/build/src/disconnectserver .
# COPY ./dlms-cim/build/src/disconnectclient .
# COPY ./dlms-cim/build/src/CISsim .
# COPY ./dlms-cim/build/src/DLMS_sim .
# COPY ./dlms-cim/build/src/HESsim .
# COPY ./dlms-cim/build/src/Metersim .

