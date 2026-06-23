# Day 10 - Package Management, SSH & Python Basics

## Linux Package Management

Commands Learned:

```bash
sudo apt update
sudo apt install htop
sudo apt remove htop
dpkg -l
Purpose
apt update → Updates package list
apt install → Installs software
apt remove → Removes software
dpkg -l → Lists installed packages
SSH

Commands Learned:

ssh-keygen -t rsa
cat ~/.ssh/id_rsa.pub
sudo apt install openssh-server
sudo systemctl start ssh
ssh localhost
Purpose
Generate SSH keys
View public key
Install SSH server
Start SSH service
Connect to localhost using SSH
Python Basics

Concepts Learned:

print()
Variables
input()
if-else
Modulus (%)
For Loops
Programs Created
greet.py
Takes user name as input
Prints greeting message
even_odd.py
Checks whether a number is even or odd
marks.py
Checks pass or fail based on marks
loop.py
Prints numbers using for loop
evn.py
Prints even numbers
odd.py
Prints odd numbers
Key Learnings
Linux package management using apt and dpkg
SSH key generation and local SSH connection
Python basics for DevOps automation
Writing simple scripts using conditions and loops
