# shuorv-builder

This is the repo for build system for shuorv.

Base on openjdk8 to build scala code.

We design to use docker, so new developer need no more time on setting up CentOS6 any more.

It suppose to be able to run on any System can run AMD64_Linux container.
(Windows 10 Pro, MacOS X, Linux)

This system should pass ucb-bar/rscv-main.git 's make process.

Simply run
```bash
docker run -it -v $(pwd)/:/Code shuorv-builder:latest bash
```
