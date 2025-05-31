# Bandit Level 02 → 03

## 🎯 Challenge Description

The password for the next level is stored in a file called **spaces in this filename** located in the home directory.

---

## 💡 My Thought Process & Approach

After logging in and running `ls`, I immediately saw the file named `spaces in this filename`. Filenames with spaces can be tricky in the shell, but the standard solution is to enclose the whole name in quotes.

So, I tried `cat "spaces in this filename"`. It worked instantly, revealing the password. This level was a straightforward reminder that quoting is the key to handling filenames that include spaces.

---

## 💻 Commands Used

```bash
# 1. List the contents of the current directory to verify 'spaces in this filename' exists
$ ls
spaces in this filename

# 2. Read the content of the 'spaces in this filename' file to get the password
$ cat "spaces in this filename"
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```

## 🔑 Bandit3 password
```
MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx
```
