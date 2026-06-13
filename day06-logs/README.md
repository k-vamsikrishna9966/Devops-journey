# Day 06 - Logs

## Goal

Learn how to view, monitor, and analyze logs for troubleshooting.

---

## Commands Learned

### journalctl

```bash
sudo journalctl -u nginx
```

Purpose:
- View Nginx service logs.
- Check when Nginx started, stopped, or failed.

Example:

```bash
sudo journalctl -u nginx -n 5
```

Shows the last 5 Nginx log entries.

---

### tail

```bash
tail /var/log/nginx/access.log
```

Purpose:
- View the most recent log entries.

---

### tail -f

```bash
sudo tail -f /var/log/nginx/access.log
```

Purpose:
- Monitor logs in real time.
- Useful while testing applications.

---

## Log Files

### access.log

Location:

```text
/var/log/nginx/access.log
```

Records:
- Client IP Address
- HTTP Method
- Requested URL
- Status Code
- User Agent

Example:

```text
::1 - - [13/Jun/2026:10:09:56 +0000] "GET / HTTP/1.1" 200 610 "-" "curl/8.5.0"
```

Meaning:

- `::1` → Localhost IP
- `GET` → Request Method
- `/` → Home Page
- `200` → Request Successful
- `610` → Response Size
- `curl/8.5.0` → Client Application

---

### error.log

Location:

```text
/var/log/nginx/error.log
```

Records:
- Warnings
- Errors
- Service Failures
- Configuration Problems

---

## Practice Performed

### Monitor Logs

Terminal 1:

```bash
sudo tail -f /var/log/nginx/access.log
```

Terminal 2:

```bash
curl localhost
```

Observation:

A new log entry appeared immediately in access.log.

---

### Nginx Stop Test

Stop Nginx:

```bash
sudo systemctl stop nginx
```

Test Website:

```bash
curl localhost
```

Output:

```text
curl: (7) Failed to connect to localhost port 80
```

Reason:

- Nginx service stopped.
- Port 80 was not listening.

---

## Key Concepts Learned

### Difference Between tail and tail -f

tail:

- Shows the last lines of a file.
- Exits immediately.

tail -f:

- Shows the last lines.
- Continues monitoring for new entries.

---

### What Does HTTP 200 Mean?

HTTP Status Code 200 means the request was processed successfully.

---

## Commands Practiced

```bash
sudo journalctl -u nginx
sudo journalctl -u nginx -n 5

tail /var/log/nginx/access.log
sudo tail -f /var/log/nginx/access.log

curl localhost

sudo systemctl stop nginx
sudo systemctl start nginx
```
