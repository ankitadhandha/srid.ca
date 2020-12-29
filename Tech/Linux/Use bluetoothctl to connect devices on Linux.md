---
slug: bluetoothctl
---

I find bluetooth programs on Linux to be very unreliable when it comes to successfully establishing connection to even already paired bluetooth devices. The CLI program `bluetoothctl` however surprisingly works. 

For posterity, here's what I did to connect the [[Thinkpad Compact Bluetooth Keyboard]] to [[P71]].

```
$ bluetoothctl
[bluetooth]# list
Controller 74:E5:F9:51:E8:3D thebeast [default]
[bluetooth]# devices
Device 90:7F:61:0B:E0:BF ThinkPad Compact Bluetooth Keyboard with TrackPoint
[bluetooth]# connect
Missing dev argument
[bluetooth]# connect 90:7F:61:0B:E0:BF
Attempting to connect to 90:7F:61:0B:E0:BF
[CHG] Device 90:7F:61:0B:E0:BF Connected: yes
[CHG] Device 90:7F:61:0B:E0:BF Modalias: usb:v17EFp6048d0312
[CHG] Device 90:7F:61:0B:E0:BF UUIDs: 00001000-0000-1000-8000-00805f9b34fb
[CHG] Device 90:7F:61:0B:E0:BF UUIDs: 00001124-0000-1000-8000-00805f9b34fb
[CHG] Device 90:7F:61:0B:E0:BF UUIDs: 00001200-0000-1000-8000-00805f9b34fb
[CHG] Device 90:7F:61:0B:E0:BF ServicesResolved: yes
[CHG] Device 90:7F:61:0B:E0:BF WakeAllowed: yes
[CHG] Device 90:7F:61:0B:E0:BF Paired: yes
Connection successful
$
```

## See also

- [NixOS wiki on Bluetooth](https://nixos.wiki/wiki/Bluetooth), which mentions these programs.