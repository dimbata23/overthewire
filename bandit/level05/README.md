# Bandit Level 05 → 06

## 🎯 Challenge Description

The password for the next level is stored in a file somewhere under the **inhere** directory and has all of the following properties:

    human-readable
    1033 bytes in size
    not executable

---

## 💡 My Thought Process & Approach

Alright let's start with looking at the properties of the files again: `file inhere/*`.. oh they are all directories.. it's a tree.
Maybe we can you `find` for a recursive search. Let's look in `man find` for something that checks size. Oh so: `find -size 1033c`. Great thre's only one file with that exact size! Let's `cat` it, super it starts with a password and is filled with empty characters until the end of the file.


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

## 🔑 Bandit1 password
```
HWasnPhtq9AVKe0dmk45nxy20cvUa6EG
```

