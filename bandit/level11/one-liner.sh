cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m' | grep -oP '[A-Za-z0-9]{10,}'
