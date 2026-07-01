# Day 11 - Linux Users & Groups

## Topics Covered

- whoami
- id
- /etc/passwd
- useradd
- passwd
- groups
- usermod
- su

## Commands

```bash
whoami
id
cat /etc/passwd | head
sudo useradd testuser
sudo passwd testuser
groups testuser
sudo usermod -aG sudo testuser
su - testuser
