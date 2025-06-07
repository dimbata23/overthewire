# Bandit Level 09 → 10

## 🎯 Challenge Description

The password for the next level is stored in the file **data.txt** in one of the few human-readable strings, preceded by several ‘=’ characters.

---

## 💡 My Thought Process & Approach

First off, I tried to `less data.txt`, but nope, it was a **binary file**.

Then, I saw `strings` is a suggested command. It pulled out just the human-readable text from the binary file!

The output had a lot of text, but I knew the password had a bunch of equals signs. So, I piped that into `grep` and searched for **`===`**.

`strings data.txt | grep ===`

Bingo!

---

## 💻 Commands Used

```bash
# 1. Show the content of the file (scrollable)
$ less data.txt
"data.txt" may be a binary file.  See it anyway?

# 2. Print only strings and not binary data
$ strings data.txt
l0@P(
,k=?
tIsrQ
 [...]
 
# 3. Search for those several '=' characters
$ strings data.txt | grep ===
========== the
========== password{k
=========== is
========== FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

## 🔑 Bandit9 password
```
FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey
```

