## Pull a containerised Solana dev environment

You can pull this image from Docker Hub using

`$ docker pull monch1962/solana:latest`

## Build a containerised Solana dev environment

If you want to build the image yourself, you can run

`$ docker build -t solana-dev:latest .`

Note that this image is quite large and complex, so is likely to take several minutes to build. Once built, you may want to save it in a registry so you don't need to rebuild it again later

## Run a containerised Solana dev environment

`$ docker run --rm -it solana-dev:latest /bin/bash`

You should now have a working Solana environment. To test it, try running a few commands

`# solana --version`

`# rustc --version`

`# tsc --version`

`# spl-token --version`

`# node --version`

`# npm --version`

`# anchor --version`