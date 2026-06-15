# Day 07 - Mini Project 1: Host a Static Website

## Goal

Host a custom HTML page using Nginx and troubleshoot common issues.

## What I Did

- Created a custom HTML page
- Hosted it using Nginx
- Verified website using browser and curl
- Viewed logs using journalctl and access.log
- Tested firewall rules using UFW

## Commands Used

```bash
sudo systemctl start nginx
sudo systemctl stop nginx
sudo systemctl status nginx

curl localhost

sudo journalctl -u nginx -n 5

sudo ufw status
sudo ufw allow 80

sudo nginx -t
sudo systemctl reload nginx
```

## Break & Fix

### Scenario 1 - Service Down

- Stopped Nginx
- Website became unavailable
- Checked status and logs
- Started Nginx and restored service

### Scenario 2 - Firewall Block

- Port 80 was blocked
- Checked UFW rules
- Allowed port 80

### Scenario 3 - Configuration Issue

- Changed Nginx root path incorrectly
- Used nginx -t to validate configuration
- Learned syntax validation vs functionality testing

## Key Learnings

- Nginx serves website content
- Logs help identify root causes
- Firewall rules affect access
- nginx -t checks syntax only
- reload applies configuration without restarting service
