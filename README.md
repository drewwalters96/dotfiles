# dotfiles
This is my personal collection of configurations.

## Configurations
- i3
- Xorg
- URxvt (Xresources)
- Vim

## Getting Started
A simple install script is provided in the `tools` directory. To install all
dotfiles, run:

```bash
tools/install.sh
```

from the root directory of the repository. To ignore a particular config, add
it to `tools/.ignore`:

```
.git
README.md
tools
```

Ignored configs should be on a seperate line.
