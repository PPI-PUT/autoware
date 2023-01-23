FROM ghcr.io/autowarefoundation/autoware-universe:latest-cuda
ARG WORKSPACE
ENV WORKSPACE=${WORKSPACE}

ENV AMENT_CPPCHECK_ALLOW_SLOW_VERSIONS=1


# install custom packages
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     package_a \
#     package_b


# install custom python packages
# RUN python3 -m pip --no-cache-dir install \
#     package_a \
#     package_b


# customize bash
COPY bashrc-git-prompt /tmp/
RUN curl -L https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh >> /etc/skel/.bashrc \
    && cat /tmp/bashrc-git-prompt >> /etc/skel/.bashrc \
    && rm -rf /tmp/bashrc-git-prompt \
    && echo "source /opt/ros/humble/setup.bash" >> /etc/skel/.bashrc


# set up entrypoint
COPY entrypoint /entrypoint
ENTRYPOINT ["/entrypoint"]

CMD ["/bin/bash"]
LABEL maintainer="Amadeusz Szymko (amadeusz.szymko@put.poznan.pl)"
