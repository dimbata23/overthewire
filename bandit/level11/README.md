# Bandit Level 11 → 12

## 🎯 Challenge Description

The password for the next level is stored in the file **data.txt**, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions

---

## 💡 My Thought Process & Approach

Okay, so "rotated by 13 positions"? My brain immediately went wild, thinking it meant letters literally *moving* places in the sentence while numbers stayed put. I spent way too long trying to wrap my head around that kind of crazy string shift.

Then I saw the "Helpful Reading Material" on OverTheWire – "**Rot13 on Wikipedia**". Turns out, Rot13 is just a simple cipher that rotates each letter in the *alphabet* by 13 spots, not their positions in the actual text... Seriously, OverTheWire...?

So, with that cleared up, I checked out `tr`, one of the suggested commands. I hit `man tr`, and it was... well, not super clear, but I figured out it's mostly for piping stuff in and translating characters.

Knowing how Rot13 actually works, I just put it all together: `cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`. And boom, password unlocked!


---

## 💻 Commands Used

```bash
# 1. What is tr?
$ man tr
 [Documentation...]

# 2. Doing cipher things
$ cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

## 🔑 Bandit12 password
```
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

