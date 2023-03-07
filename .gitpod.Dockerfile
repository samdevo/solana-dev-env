FROM gitpod/workspace-full

USER gitpod

RUN sudo apt-get -q update \
    && sudo apt-get install -yq \
        libpython3.10 pkg-config build-essential libudev-dev libssl-dev
#        rust-lldb \
#    && sudo rm -rf /var/lib/apt/lists/*

#ENV RUST_LLDB=/usr/bin/lldb-8

RUN bash -cl "rustup toolchain install nightly"

# Install Solana
RUN sh -c "$(curl -sSfL https://release.solana.com/stable/install)"
RUN . ~/.profile

# Install Anchor
RUN cargo install --git https://github.com/project-serum/anchor avm --locked --force \
    && avm install latest \
    && avm use latest