FROM debian:13.4-slim

ADD https://github.com/checkmake/checkmake/releases/download/0.2.2/checkmake-0.2.2.linux.amd64 \
    /usr/local/bin/checkmake

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    chktex \
    git \
    latexmk \
    make \
    texlive-latex-extra \
    texlive-fonts-extra \
    && rm -rf /var/lib/apt/lists/* \
    && chmod +x /usr/local/bin/checkmake

WORKDIR /data

CMD ["make"]
