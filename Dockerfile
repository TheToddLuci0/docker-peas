FROM ubuntu:latest

ARG DEBIAN_FRONTEND=noninteractive
ARG SKIP_PEAS=flase

RUN <<EOF
apt-get update
apt-get install -y curl bash
curl -L https://github.com/peass-ng/PEASS-ng/releases/latest/download/linpeas.sh -o /linpeas.sh
chmod +x /linpeas.sh
EOF

RUN echo "------\n$SKIP_PEAS\n------"
RUN env

RUN <<EOF
if [[ $SKIP_PEAS == "true" ]] ; then
        echo "Skipping execution...."
else
        bash /linpeas.sh -o cloud 
fi
EOF

ENTRYPOINT /linpeas.sh

