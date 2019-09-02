# `pam_keyctl` - pass passwords from cryptsetup into the pam stack

## Install

Build and install the `pam` module:

```
make
make install
```

The display manager must have access to roots user keyring. So for systemd, `KeyringTypr=shared` must be added to it's service file. The shell script `share-keyring` does this by adding an override file. For example call `sudo ./share-keyring lightdm.service`

Add the line `auth optional pam_keyctl.so` into the display managers pam service file used by autologin, e.g. `/etc/pam.d/lightdm-autologin`

## Sources and Licensing

copied and adapted from gdm.

`pam_keyctl` is licensed under the GNU General Public License v2.0

GDM is licensed under the GNU General Public License v2.0. For more info, see the COPYING file.

