# acme-wsl
Install acme / plan9port on Windows Subsystem for Linux

## Instructions

1. Clone and run the script.
2. Install Xming X Server for Windows https://sourceforge.net/projects/xming/

```{r, engine='sh', count_lines}
export DISPLAY=:0
acme -af /mnt/font/DejaVu\ Sans\ Mono/12a/font
```
