[![](https://images.microbadger.com/badges/image/friesischscott/gitlab-ci-matlab.svg)](https://hub.docker.com/r/friesischscott/gitlab-ci-matlab/)
# gitlab-ci-matlab
Container supporting a mounted in matlab for use in Gitlab CI

## Usage
To use this container in Gitlab you need to mount your local MATLAB installation into the container. This can be achieved by adding
```YML
"/path/to/MATLAB/:/usr/local/MATLAB/from-host"
```
to the **volumes** part under **[runners.docker]** in your **/etc/gitlab-runner/config.toml**.

### MATLAB license
Depending on your license you may also need to spoof your container's MAC address to match your license. Assuming the address corresponding to your license is stored inside a variable named `HW_ADDRESS`, you can run

```
ip link set dev eth0 address $HW_ADDRESS
```

to set it inside the container. Make sure that your container is running in `privileged` mode.

## Acknowledgement

This is based on [Benjamin Heasly's](https://github.com/benjamin-heasly/matlab-support) work. I just needed to modify the Dockerfile to make it usable in Gitlab CI.
