DOCKER_BUILDKIT=1 docker build --network=host \
    --build-arg WORKSPACE=autoware \
    -t ghcr.io/autowarefoundation/autoware-universe:latest-cuda-dev .
