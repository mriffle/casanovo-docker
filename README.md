# casanovo-docker
Build a Casanovo Docker image

## How to Build:
This will build a Docker image named `casanovo:4.2.1` on your local system:

`docker build --build-arg CASANOVO_VERSION=4.2.1 -t casanovo:4.2.1 .`

## How to Run:
Run with a command similar to:

`docker run --rm -it --user $(id -u):$(id -g) -v `pwd`:`pwd` -w `pwd` --shm-size=1g casanovo:4.2.1 casanovo sequence my_file.mzML`

This command includes parameters to ensure process runs as the current user and has access to the current directory.

## More Information:

More information about Casanovo: https://github.com/Noble-Lab/casanovo
How to Run Casanovo using a Nextflow workflow: https://nf-ms-dda-casanovo.readthedocs.io/
