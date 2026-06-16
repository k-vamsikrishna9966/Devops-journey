#!/bin/bash
echo "hello vamsi"
name="karre"
echo "vamsi $name"
if [ -f /etc/password ]
then 
     echo "File exists"
else
    echo "File not found"
fi
