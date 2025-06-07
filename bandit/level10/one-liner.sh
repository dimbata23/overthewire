base64 -d data.txt | grep -oP '[A-Za-z0-9]{10,}'
