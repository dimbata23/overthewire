# Bandit Level 04 → 05

## 🎯 Challenge Description

The password for the next level is stored in the only human-readable file in the **inhere** directory. Tip: if your terminal is messed up, try the “reset” command.

---

## 💡 My Thought Process & Approach

Upon entering the directory, my first move was to determine the file types present using `file inhere/*`.
The output quickly revealed that only one file, `-file07`, was identified as "ASCII text."
This immediately suggested it was the target. I then used `cat inhere/-file07`, and Bingo!

---

## 💻 Commands Used

```bash
# 1. List the file types of the 'inhere' directory
$ file inhere/*
inhere/-file00: PGP Secret Sub-key -
inhere/-file01: data
 [...]
inhere/-file06: data
inhere/-file07: ASCII text
inhere/-file08: data
inhere/-file09: data

# 2. Read the content of the text file to get the password
$ cat inhere/-file07
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

## 🔑 Bandit5 password
```
4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw
```

