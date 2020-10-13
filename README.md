# pfsyslogd - Daemon program reading PF log and sending it to syslog
## What is this?
Pfsyslogd is daemon program to read PF log by using tcpdump and send it to syslog.
## Requirement
### [PF (OpenBSD's Packet Filter)](http://www.openbsd.org/faq/pf/)
Pfsyslogd reads PF log. So your system must be configured to use PF.
### [Ruby](https://www.ruby-lang.org/)
Pfsyslogd is Ruby stript. So you need Ruby to run pfsyslogd.
### [Tcpdump](https://www.tcpdump.org/)
Ptsyslogd uses tcpdump to read PF log. So you need tcpdump to run pfsyslogd.
## Install
1. Clone this repostory
2. edit Makefile
3. make
4. make install
## Run
Just execute `pfsyslogd` from command line. Then it goes background and works as daemon.
## Example
Following is an example of message that `pfsyslogd` writes to syslog.
```
Oct  1 12:34:56 host pfsyslogd[12345]: rule 0/0(match): block out on em0: 192.168.0.1.22 > 10.0.200.100.31713: Flags [FP.], seq 3484045137:3484045175, ack 3402815652, win 1038, length 38
```
## Author
Yasuhiro Kimura
