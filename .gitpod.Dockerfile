FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
        libpython3.10
#        rust-lldb \
#    && sudo rm -rf /var/lib/apt/lists/*

#ENV RUST_LLDB=/usr/bin/lldb-8

RUN bash -cl "rustup toolchain install nightly"

RUN sh -c "$(curl -sSfL https://release.solana.com/stable/install)"

RUN . ~/.profile