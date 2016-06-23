# docker-build-snapr
A docker container to build snapr.

The docker image has all the prereqs to build snapr.

    - zlib
    - g++
    - make

The ``build-snapr.sh`` contains variables for pointing to the source
files and running image.  After you point the ``$SOURCE`` variable to
the snapr source, you should be able to simply run the script:

```
    ./build-snapr.sh
```

and have the snapr executable in the ``$SOURCE`` directory.

