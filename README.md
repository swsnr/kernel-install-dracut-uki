kernel-install plugin to create UKIs with dracut 

## Installation

```console
# make install
```

## Configuration

```console
$ cat /etc/kernel/install.conf
# Generate a UKI with dracut
layout=uki
initrd_generator=dracut
```
