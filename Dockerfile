# SPDX-FileCopyrightText: 2025 Vasco Guita <vasco@guita.org>
#
# SPDX-License-Identifier: MIT

FROM debian:13.1-slim

ADD https://github.com/checkmake/checkmake/releases/download/0.2.2/checkmake-0.2.2.linux.amd64 \
    /usr/local/bin/checkmake

RUN apt update && \
    apt install -y --no-install-recommends \
    chktex \
    git \
    latexmk \
    make \
    npm \
    reuse \
    texlive-latex-extra \
    texlive-fonts-extra \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g --omit=optional --omit=dev markdownlint-cli2 \
    && npm cache clean --force \
    && chmod +x /usr/local/bin/checkmake
