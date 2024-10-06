# Installation and Setup

## Dependencies

### Docker Desktop

Please install Docker Desktop via their instructions (Install Docker Desktop on [Mac](https://docs.docker.com/desktop/install/mac-install/), [Windows](https://docs.docker.com/desktop/install/windows-install/), or [Linux](https://docs.docker.com/desktop/install/linux-install/).)

### Devbox

All other software dependencies for this project are defined in the `devbox.json` and `devbox.lock` files in the root directory.

Please install Devbox according to their instructions: https://www.jetify.com/devbox/docs/installing_devbox/

Once installed you can run:

```
devbox shell
```

from anywhere in the repo and devbox will use Nix package manager to install a copy of all of the required software in an isolated environment.