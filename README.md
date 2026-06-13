- # DevOps Journey

## Day 01 - Linux Basics + Nginx

### What I Did
- Used basic Linux commands: `pwd`, `ls`, `cd`
- Created and removed files/directories
- Installed nginx
- Started and stopped nginx service
- Tested server using `curl`

### Break & Fix
- Stopped nginx → curl failed
- Identified issue (service down)
- Restarted nginx → fixed

### Commands Used
See: `day01-commands.txt`

### Learning
- Linux navigation basics
- Service management using `systemctl`
- Debugging mindset (break → observe → fix)
- Day 02 - Permissions & Processes
  
## Day 02 -Permissions & Processes

## What I Did
- Practiced chmod, chown
- Worked with file permissions (644, 755, 000)
- Explored processes using ps, grep
- Killed processes using kill

## Break & Fix
- Removed file permissions → "Permission denied"
- Checked permissions using ls -l
- Restored using chmod 644

- Script failed to run → no execute permission
- Fixed using chmod 755

- Created process using sleep
- Found PID using ps aux | grep
- Killed process using kill

## Learning
- Permissions control access (r, w, x)
- chmod changes permissions
- chown changes ownership
- ps shows running processes
- kill stops processes
- 
## Day 03 - Networking Fundamentals

## What I Did
- Tested DNS and connectivity using ping
- Sent HTTP requests using curl
- Checked open ports using ss
- Verified HTTP headers using curl -I

## Break & Fix
- curl http://localhost failed → connection refused
- Checked port using ss -tuln → port 80 not listening
- Identified nginx service stopped
- Started nginx → issue resolved

## Learning
- DNS resolves domain to IP
- TCP connects to IP:port
- HTTP sends request and receives response
- Port must be open for service to respond

- ## Day 04 — DNS & Ports

### What I Did
- Used nslookup for DNS resolution
- Compared domain IP addresses
- Learned common ports
- Used ss -tuln to view listening ports

### Ports Learned
- 80 = HTTP
- 443 = HTTPS
- 22 = SSH
- 3306 = MySQL

### Break & Fix
- Modified /etc/hosts incorrectly
- DNS resolution failed
- Fixed hosts file and restored connectivity

---

## Day 05 — Firewall & UFW

### What I Did
- Enabled UFW firewall
- Allowed SSH and HTTP traffic
- Blocked and unblocked ports
- Verified firewall rules

### Break & Fix
- Blocked port 80
- Website became inaccessible
- Allowed port 80 again
- Website worked successfully

## Day 06 - Logs

### What I Did

* Used `journalctl` to view Nginx service logs
* Used `tail` to view recent log entries
* Used `tail -f` to monitor logs in real time
* Explored Nginx log files:

  * `/var/log/nginx/access.log`
  * `/var/log/nginx/error.log`
* Generated HTTP requests using `curl localhost`
* Analyzed access log entries and HTTP status codes

### Break & Fix

Stopped Nginx:

```bash
sudo systemctl stop nginx
```

Tested website:

```bash
curl localhost
```

Output:

```text
curl: (7) Failed to connect to localhost port 80
```

Troubleshooting Steps:

1. Checked Nginx status using `systemctl status nginx`
2. Verified logs using `journalctl -u nginx`
3. Confirmed port 80 was not listening using `ss -tuln`
4. Started Nginx service again
5. Verified website accessibility using `curl localhost`

### Commands Used

```bash
sudo journalctl -u nginx
sudo journalctl -u nginx -n 5

tail /var/log/nginx/access.log
sudo tail -f /var/log/nginx/access.log

curl localhost

sudo systemctl stop nginx
sudo systemctl start nginx
```

### Learning

* `journalctl` displays service logs managed by systemd
* `access.log` records requests handled by Nginx
* `error.log` records warnings and errors
* `tail` shows recent log entries
* `tail -f` monitors logs in real time
* HTTP Status Code `200` means the request was successful
* Logs are one of the first places to check during troubleshooting

---


