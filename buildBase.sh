#! /bin/bash
# Build the base Docker images. This base images is the support
#    libraries (Qt, ...) and the Vircadia server apps (domain-server, ...).

# Set the environment variable TAG to the github tag to pull.
export BUILDREPO=${OVERTE_REPO:-https://github.com/overte-org/overte}
export BUILDTAG=${OVERTE_TAG:-master}

echo "=== Building ${BUILDREPO}:${BUILDTAG}"

docker build -f Dockerfile-base \
        --build-arg REPO=${BUILDREPO} \
        --build-arg TAG=${BUILDTAG} \
        -t domain-server-build-base . | tee ./out.buildBase 2>&1
