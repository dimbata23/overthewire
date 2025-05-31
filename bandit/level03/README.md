# Bandit Level 03 → 04

## 🎯 Challenge Description

The password for the next level is stored in a hidden file in the **inhere** directory.

---

## 💡 My Thought Process & Approach

After logging in, my first `ls` command only showed `inhere`.
When I then tried `ls inhere`, it returned an empty result.

To reveal everything, I used `ls -la inhere`.
This command, combining "list all" (`-a`) and "long format" (`-l`),
exposed a file named `...Hiding-From-You`. The multiple dots were clearly a playful naming trick:
```
.
..
...Hiding-From-You
```

Knowing that `.` refers to the current directory and `..` to the parent directory,
I used `cat inhere/...Hiding-From-You` to read the file's contents. Bingo!

For a simple one-line solution, recognizing that hidden files start with a dot (`.`) allows you to use a wildcard.
Since there's only one such file, `cat inhere/.*` will directly output its contents.

---

## 💻 Commands Used

```bash
# 1. List the contents of the current directory to verify 'inhere' exists
$ ls
inhere

# 2. List the contents of the 'inhere' directory to verify a hidden file exists
$ ls -la inhere
total 12
drwxr-xr-x 2 root    root    4096 Apr 10 14:23 .
drwxr-xr-x 3 root    root    4096 Apr 10 14:23 ..
-rw-r----- 1 bandit4 bandit3   33 Apr 10 14:23 ...Hiding-From-You

# 3. Read the content of the hidden file to get the password
$ cat inhere/...Hiding-From-You
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

## 🔑 Bandit4 password
```
2WmrDFRmJIq3IPxneAaMGhap0pFhF3NJ
```

