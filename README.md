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

## Day 07 - Nginx Configuration

### What I Did

* Explored Nginx configuration files
* Learned the purpose of `/etc/nginx/sites-enabled/default`
* Created a backup of the default configuration
* Modified Nginx configuration settings
* Tested configuration using `sudo nginx -t`
* Reloaded Nginx after successful validation

### Break & Fix

* Introduced configuration errors while editing Nginx config
* Encountered errors such as:

  * `unexpected ";"`
  * `duplicate default server`
* Used `sudo nginx -t` to identify the exact file and line number
* Fixed configuration issues and restored service successfully

### Learning

* Importance of backing up configuration files
* Nginx configuration structure
* Using `nginx -t` before restarting or reloading services
* Reading and understanding Nginx error messages
* Troubleshooting configuration failures

---

## Day 08 - Bash Scripting Basics

### What I Did

* Created Bash scripts
* Learned script execution using `chmod +x`
* Practiced variables and `echo`
* Practiced `if`, `else`, and `for` loops
* Built basic automation scripts

### Scripts Created

* `hello.sh`
* `file-check.sh`
* `loop.sh`
* `nginx-check.sh`

### Mini Project

Created an Nginx monitoring script that:

* Checks whether Nginx is running
* Displays service status
* Reports if Nginx is stopped

### Learning

* Bash script structure using `#!/bin/bash`
* File checks using `-f`
* Directory checks using `-d`
* Loop variables using `$i`
* Conditional statements using `if-else`
* Basic Linux task automation
* Difference between script logic and command execution

---
## Day 09 - Bash Advanced & Linux Filesystem

### What I Did

* Learned Linux filesystem structure
* Explored important directories:

  * `/etc`
  * `/var/log`
  * `/home`
  * `/usr/sbin`
  * `/tmp`
* Learned Bash functions
* Learned script arguments (`$1`, `$2`)
* Practiced reusable Bash scripts

### Scripts Created

* `function.sh`
* `args.sh`

### Linux Filesystem Learning

#### `/etc`

Stores configuration files.

Examples:

* `/etc/nginx/nginx.conf`
* `/etc/hosts`
* `/etc/passwd`

#### `/var/log`

Stores application and system logs.

Examples:

* `/var/log/nginx/access.log`
* `/var/log/nginx/error.log`
* `/var/log/auth.log`

#### `/home`

Stores user files and directories.

Example:

* `/home/vamsi`

#### `/usr/sbin`

Stores system executables.

Example:

* `/usr/sbin/nginx`

### Bash Functions

Created reusable functions to avoid repeating code.

Example:

```bash
say_hello() {
    echo "Hello World"
}

say_hello
```

### Bash Arguments

Learned how to pass values to scripts.

Example:

```bash
./args.sh nginx apache
```

Results:

```text
$1 = nginx
$2 = apache
```

### Commands Practiced

```bash
pwd
ls /
which nginx
find ~ -name "filename"
```

### Key Learning

* Difference between configuration files, logs, executables, and user files
* How Bash functions improve script reusability
* How arguments make scripts dynamic
* How to troubleshoot "No such file or directory" errors
* Importance of verifying assumptions before fixing issues

### Real-World Troubleshooting Flow

```text
Error
↓
Check current directory
↓
Verify file exists
↓
Find file location
↓
Run correct file
↓
Confirm success
```

### Day 09 Outcome

Successfully learned Linux filesystem basics, Bash functions, Bash arguments, and practical troubleshooting techniques. All scripts were committed and pushed to GitHub.


