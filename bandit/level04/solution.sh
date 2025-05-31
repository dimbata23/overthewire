file inhere/* | awk -F: '/ASCII text/{print $1}' | xargs cat
