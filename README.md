# solana-dev-env

Setting up a Solana development environment isn't particularly straightforward, and maintaining it over time isn't something I particularly want to do. I'd far rather have an dev environment that doesn't require me spending a ton of time to keep it running

## gitpod environment

Opening this repo inside gitpod (i.e. https://gitpod.io/#/https://github.com/monch1962/solana-dev-env) will trigger the build of a Solana dev/test environment. It will take about 20 minutes(!) to install everything, but once that's done you can work in a sandboxed environment inside your browser.

You won't be able to push anything to this repo, so it's probably best if you fork it once you're convinced it's useful for you, then work in your own forked environment where you can save your code changes.

Note that you'll need to run `. ~/.profile` after the environment has been built, to get the `solana` CLI onto the path

If you ever want to rebuild this environment (e.g. to update versions of all the tools), you can run `gp rebuild` inside gitpod, then go get a leisurely coffee while everything rebuilds
