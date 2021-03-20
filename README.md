# IoT-WiFi-AP
A WiFi AP with all HTTP and HTTP traffic proxied through port 8080 for IoT assessments.

Install hostapd and dnsmasq. Copy dnsmasq.conf to /etc/dnsmasq.conf and copy hostapd.conf to /etc/hostapd/hostapd.conf.

Run start-ap.sh. The SSID and password are in the hostapd.conf file. This configuration will push all traffic to port 80 and 443 to port 80 for interception in Burp Suite or other proxy. If you don't see any HTTP traffic after connecting the device to the AP then the device is properly checking TLS certificates.
