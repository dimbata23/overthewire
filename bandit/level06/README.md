# Bandit Level 06 → 07

## 🎯 Challenge Description

The password for the next level is stored **somewhere on the server** and has all of the following properties:

    owned by user bandit7
    owned by group bandit6
    33 bytes in size

---

## 💡 My Thought Process & Approach

My first thought was a simple `ls`, but it showed nothing. I knew the password was **hidden somewhere on the server**.

My initial `find / -size 33c` attempt yielded too many results and a lot of "Permission denied" errors. I needed to **narrow the search**.

Consulting `man find`, I discovered options for `-user` and `-group`. Adding `-user bandit7` still gave errors, but a promising file path `/etc/bandit_pass/bandit7` appeared. To clean the output, I appended `2>/dev/null`.

This refined search revealed two potential files, so I added `-group bandit6` to my `find` command. Bingo! This successfully isolated the single correct file, which I then `cat`ted to retrieve the password.

---

## 💻 Commands Used

```bash
# 1. List all files with size 33 bytes
$ find / -size 33c
find: ‘/root’: Permission denied
find: ‘/proc/tty/driver’: Permission denied
 [Lots of files and errors...]

# 2. Read about the find command
$ man find
 [Documentation suggests there is a -user parameter]
 
# 3. Find files with exactly 33 characters owned by user bandit7
$ find / -size 33c -user bandit7
find: ‘/root’: Permission denied
find: ‘/proc/tty/driver’: Permission denied
 [Still quite a bit of errors...]
 
# 4. Search for the exact file properties and direct the error output to /dev/null
$ find / -size 33c -user bandit7 -group bandit6 2>/dev/null
/var/lib/dpkg/info/bandit7.password 

# 4. Print the password
$ cat /var/lib/dpkg/info/bandit7.password 
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

## 🔑 Bandit7 password
```
morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj
```

