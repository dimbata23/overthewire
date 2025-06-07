# Bandit Level 08 → 09

## 🎯 Challenge Description

The password for the next level is stored in the file **data.txt** and is the only line of text that occurs only once

---

## 💡 My Thought Process & Approach

Okay, first things first, I `less data.txt` to see what I was dealing with. Looks like a bunch of passwords, one per line.

The goal was to find the line that *doesn't* repeat. Looking at the suggested commands `uniq` looked like it might help, so I checked out `man uniq`. Boom! The `-u` or `--unique` option sounded exactly like what I needed: "only print unique lines."

So I tried `uniq -u data.txt`, but it still spit out a ton of lines. The file probably needs to be sorted first as some 'unique' algorithms work only for consecutive elements. Sorted it, and then `uniq -u` worked like a charm!

---

## 💻 Commands Used

```bash
# 1. Show the content of the file (scrollable)
$ less data.txt
L3ZCH71RRxt8Kmy3X3R0NqQTmebcmkQ4
NknAyxnPgpoEcWHizP4TA8ALeIyco1VT
Fmt5ODm3V6Qf1oTF3qEJNWlVcHFdpbuz
 [...]

# 2. Print only unique lines
$ sort data.txt | uniq -u
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

## 🔑 Bandit9 password
```
4CKMh1JI91bUIZZPXDqGanal4xvAg0JM
```

