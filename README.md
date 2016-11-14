# gitlab-ci-matlab
Container supporting a mounted in matlab for use in Gitlab CI

## Usages
To use this container in Gitlab you need to mount your local MATLAB installation into the container. This can be achieved by adding
```YML
"/path/to/MATLAB/:/usr/local/MATLAB/from-host"
```
to the **volumes** part under **[runners.docker]** in your **/etc/gitlab-runner/config.toml**. Depending on your license you may also need to spoof your container's MAC address to match your license.

## Acknowledgement

This is based on [Benjamin Heasly's](https://github.com/benjamin-heasly/matlab-support) work. I just needed to modify the Dockerfile to make it usable in Gitlab CI.
