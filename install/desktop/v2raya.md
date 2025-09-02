# V2ray (xray)

Download the latest stable release of xray-core from https://github.com/XTLS/Xray-core/releases.

Please do not download beta versions or developer previews.

Install the binaries for xray into the /usr/local/bin directory.

On Debian/Ubuntu you would run:
`sudo unzip` Xray-linux-64.zip -d /usr/local/bin`

Verify that the necessary files are indeed present. Run:
`ls -l /usr/local/bin` 
And you should see these files: (there may be others too - that's OK)

-rw-r--r-- 1 root root 11326721 Jan  1 01:00 geoip.dat
-rw-r--r-- 1 root root  1068329 Jan  1 01:00 geosite.dat
-rwxr-xr-x 1 root root 18837504 Jan  1 01:00 xray

## V2rayA
Download the installer for v2rayA from github: https://github.com/v2rayA/v2rayA/releases/.

Use version 2.2.4 or newer. Older versions are not compatible with Xray.

They offer installers for Arch Linux

Install the downloaded package. On Debian/Ubuntu you would run:

sudo dpkg -i installer_debian_amd64_2.2.4.deb
(Change the version number to match what you downloaded.)

Start and Enable
Start v2raya using the following command:

sudo systemctl start v2raya

If you want to start v2raya automatically whenever you start your computer, you may also run:

sudo systemctl enable v2raya

At this point the web interface for v2rayA is accessible to everyone on your local network! It's important to proceed with the next steps immediately.

Note: when starting v2raya, it tries to download some GeoIP databases. If that fails, v2raya will not start.

iptables
IPtables is required. If your computer does not have it, or if you are not sure, you can install it by running:

sudo apt install iptables

geosite.dat
If you're in China, v2rayA may fail to download the necessary geoip.dat and geosite.dat. Fortunately, we can just use the ones bundled with xray-core instead:

sudo cp /usr/local/bin/geoip.dat /root/.local/share/xray
sudo cp /usr/local/bin/geosite.dat /root/.local/share/xray

Then restart v2raya:

sudo systemctl restart v2raya

## Using v2rayA
Once v2rayA is started, you can access it through your web browser:

Linux: http://127.0.0.1:2017
OpenWRT: http://192.168.1.1:2017
The first time you start v2rayA it downloads the GeoIP databases. This can take a while, sometimes up to 20 minutes. Do not restart v2rayA or your computer/router during this time.

Create Admin User
The first time you access the web interface you'll be prompted to create an admin account - use the ones provided by 12VPX.

Import Servers
Next is a dialog allowing you to import our server list. Click the import button and copy & paste the URL found below.

https://dumiyo.com/api/v2raya/9f78a1c0-214f-47ed-9fbe-256b25d87a24

Connecting to the VPN
A few more steps in the Settings screen:

Set the Transparent Proxy/System Proxy:
In China: choose Proxy except CN sites
Outside China: choose Do Not Split Traffic
Do not change any other settings.

Set the Transparent Proxy mode:
On OpenWRT: tproxy
On Linux: try which one works for you, we like "gvisor tun" (but I find that tproxy is the one that works)
Then Save and apply


Click the Connect button next to the server you want to use.

Click Start in the top left corner. (Where it says Ready.)

Automatically Update Server List
In the Settings screen:

Switch Automatically Update Subscriptions to Update Subscription Regularly.
Set the number of hours to 12.

Load Balancing
V2rayA allows you to connect to multiple servers at the same time and load balance between them. Some websites will break when you do this. We recommend you do not use this.