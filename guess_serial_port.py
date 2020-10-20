#!/usr/bin/env nix-shell
#! nix-shell -i python3 -p python3 python3Packages.pyserial
from serial.tools.list_ports import comports

ARTEMIS_NANO_VID = 6790
ARTEMIS_NANO_PID = 29987

if __name__ == '__main__':
    import sys
    for info in comports():
        if info.vid == ARTEMIS_NANO_VID and info.pid == ARTEMIS_NANO_PID:
            print(info.device)
            sys.exit(0)
    else:
        print("booooo could not find artemis nano", file=sys.stderr)
        sys.exit(1)
