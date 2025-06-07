# Bandit Level 10 → 11

## 🎯 Challenge Description

The password for the next level is stored in the file **data.txt**, which contains base64 encoded data

---

## 💡 My Thought Process & Approach

This one seemed straightforward: a base64 decode. I quickly checked `man base64` just to confirm the usage.

Yep, it was as simple as `base64 -d data.txt`. And that's all it took!

---

## 💻 Commands Used

```bash
# 1. How do I use base64?
$ man base64
 [Documentation...]

# 2. Decode the file
$ base64 -d data.txt
The password is dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

## 🔑 Bandit11 password
```
dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr
```

