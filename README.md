# Traffic Generator for NGFW/SD-WAN Reporting

A quick script and associated systemd service to generate application traffic for NGFW and SD-WAN reporting purposes.

1. Update the .service file with an appropriate user. `juniper` is the default.
```
[Unit]
Description=CSO Traffic Generator - Mixed Traffic
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=10
User=juniper   <--------------- change this as required
WorkingDirectory=/tmp
ExecStart=/bin/bash /usr/bin/traffic-generator.sh

[Install]
WantedBy=multi-user.target
```

2.  Install the .service file:
```
cp traffic-generator.service /lib/systemd/system/
```

3.  Install the traffic-generator script:
```
cp traffic-generator.sh /usr/bin/
chown +x /usr/bin/traffic-generator.sh
```

4. Install pre-requisites:
```
apt-get install wget youtube-dl
```

5. Load and start the service:
```
systemctl daemon-reload
systemctl start traffic-generator.service
systemctl status traffic-generator.service
```

6. (OPTIONAL) Set the service to start at boot:
```
systemctl enable traffic-generator.service
```
