FROM debian:13.4-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    chktex \
    git \
    latexmk \
    make \
    texlive-latex-extra \
    texlive-fonts-extra \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data

CMD ["make"]
