# Bandit Level 01 → 02

## 🎯 Challenge Description

The password for the next level is stored in a file called - located in the home directory.

---

## 💡 My Thought Process & Approach

This level immediately threw a curveball. The password was in a file literally named `-`.

My first thought was, "Okay, easy, just `cat -`." But when I tried that, nothing happened! The terminal just sat there waiting for input. I realized `cat` was probably interpreting the dash as some special character instead of as a filename.

So, I tried quoting it: `cat '-'` and `cat "-"`. That didn't change anything; `cat` still waited. I even wondered if it was some weird, invisible character, so I tried copying and pasting the dash, but nope, still nothing.

I was stuck for a bit. Then, I tried to give it a "full" relative path to the file: `cat ./-`. Success! This told `cat` to specifically look for a file named `-` in the current directory (`.`).

Looking at the "Helpful Reading Material" section, I learned that using `-` as an argument refers to `STDIN/STDOUT`.

I also learned about another way to handle this, which is to use input redirection. The command `cat < -` also works because it takes the content of the file `-` and feeds it as standard input to `cat`, which `cat` then happily displays.

This level was a great lesson on how seemingly simple filenames can be tricky in the shell, and how to work around those quirks.

---

## 💻 Commands Used

```bash
# 1. List the contents of the current directory to verify '-' exists
$ ls
-

# 2. Read the content of the '-' file to get the password
> cat ./-
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```

## 🔑 Bandit2 password
```
263JGJPfgU6LtdEvgfWU1XP5yac29mFx
```
