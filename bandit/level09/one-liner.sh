strings data.txt | grep -oP '=+\s+\K[A-Za-z0-9]{10,}'
