# Bandit Level 00 → 01

## 🎯 Challenge Description

The password for the next level is stored in a file called readme located in the home directory. Use this password to log into bandit1 using SSH. Whenever you find a password for a level, use SSH (on port 2220) to log into that level and continue the game.

---

## 💡 My Thought Process & Approach

This is the very first level of the Bandit wargame, designed to introduce the absolute basics of command-line interaction: navigating directories and reading file contents.

1. **Locate the File:** The challenge explicitly states the password is in a file named `readme` in the current directory. I'll use the `ls` command to verify its presence.
2. **Read the File Content:** Once confirmed, I'll use the `cat` command to display the content of the `readme` file, which should reveal the password.

---

## 💻 Commands Used

```bash
# 1. List the contents of the current directory to verify 'readme' exists
$ ls
readme

# 2. Read the content of the 'readme' file to get the password
$ cat readme
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```

## 🔑 Bandit1 password
```
ZjLjTmM6FvvyRnrb2rfNWOZOTa6ip5If
```
