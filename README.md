# acme-wsl
Install acme / plan9port on Debian/Ubuntu-based distros on Windows Subsystem for Linux.

## Instructions

1. Download and run the script:

```
curl -s https://raw.githubusercontent.com/elrzn/acme-wsl/master/install.sh | sh -s
```

2. Install [VcXsrv X server](https://sourceforge.net/projects/vcxsrv/) for Windows.
3. To run:

```{r, engine='sh', count_lines}
export LIBGL_ALWAYS_INDIRECT=1
export DISPLAY=:0
acme -af /mnt/font/DejaVu\ Sans\ Mono/12a/font
```

4. Consider adding the above environmental variables to ~/.bashrc (optional):

```{r, engine='sh', count_lines}
echo "export DISPLAY=:0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc
```

5. Consider creating a script to launch acme with the above (optional):

```{r, engine='sh', count_lines}
echo "#!/bin/sh" >> ~/runacme.sh
echo "acme -af /mnt/font/DejaVu\ Sans\ Mono/12a/font1" >> ~/runacme.sh
sudo chmod u+x ~/runacme.sh
```
