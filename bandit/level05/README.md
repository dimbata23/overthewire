# Bandit Level 05 → 06

## 🎯 Challenge Description

The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:

    human-readable
    1033 bytes in size
    not executable

---

## 💡 My Thought Process & Approach

My first attempt was to use `file inhere/*`, but I quickly saw that everything listed was a directory, not a file. This immediately told me the password was buried deeper within a "tree" of directories.

Knowing I needed a recursive search, I consulted `man find`. The `-size` predicate stood out, fitting the "1033 bytes" requirement perfectly. So, I ran `find inhere -size 1033c`.

Thankfully, this command returned just one file!


---

## 💻 Commands Used

```bash
# 1. List the file types of the 'inhere' directory
$ file inhere/*
inhere/maybehere00: directory
inhere/maybehere01: directory
inhere/maybehere02: directory
 [...]

# 2. Read about the find command
$ man find
 [Documentation suggests there is a -size parameter]
 
# 3. Find files with exactly 1033 characters
$ find inhere -size 1033c
inhere/maybehere07/.file2

# 4. Print the password
$ cat inhere/maybehere07/.file2
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

## 🔑 Bandit6 password
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

