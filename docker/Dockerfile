FROM debian:stretch
RUN apt-get update && apt-get -y upgrade \
        && apt-get install -y git build-essential cpanminus libchi-perl libmojolicious-perl libdatetime-perl libxml-simple-perl libmoo-perl libjson-maybexs-perl libhash-asobject-perl libdata-parsebinary-perl libdigest-crc-perl libcache-perl libtest-longstring-perl libio-pty-perl \
        && git clone https://github.com/Tangston311/mainlevelinfinitude.git /mainlevelinfinitude \
    && chmod +x /mainlevelinfinitude/infinitude \
    && cd /mainlevelinfinitude \
    && cpanm Mojolicious::Lite CHI DateTime Try::Tiny Path::Tiny JSON IO::Termios inc::Module::Install \
    && cpanm --force WWW::Wunderground::API
EXPOSE 5001
ENTRYPOINT /mainlevelinfinitude/docker/entrypoint.sh
