# Base image for rsync mirrors

**NOTE: This image is WIP, don't use in production! Read the code if you are
uncertain about the image's workings.**


## Usage

1.  Customize `./mirror-config` to your need;
2.  Build and enjoy.

    ```dockerfile
    FROM xen0n/rsyncmirror-base:latest
    MAINTAINER Dev E. Loper <test@example.com>

    CMD ["/bin/my_init"]
    ```


## License

* BSD-3


<!-- vim:set ai et ts=4 sw=4 sts=4 fenc=utf-8: -->
