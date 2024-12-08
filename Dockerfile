FROM rust:bullseye
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_18.x | bash -
RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y nodejs jq \
    && apt-get install -y yarn \
    && npm install -g typescript
RUN rustup update

# Install Solana
RUN sh -c "$(curl -sSfL https://release.anza.xyz/stable/install)"
ENV PATH "/root/.local/share/solana/install/active_release/bin:$PATH"

# Install Anchor
RUN cargo install --git https://github.com/project-serum/anchor avm --locked --force \
    && avm install latest \
    && avm use latest
