# Bandit Level 07 → 08

## 🎯 Challenge Description

The password for the next level is stored in the file **data.txt** next to the word **millionth**.

---

## 💡 My Thought Process & Approach

I started by inspecting the file with `less data.txt`. I noticed each line contained a word paired with what looked like a password, separated by whitespaces.

Knowing the target word is "millionth," I used `grep millionth data.txt` and bingo!


---

## 💻 Commands Used

```bash
# 1. Show the content of the file (scrollable)
$ less data.txt
depression      q6X32st9sACqlScKXQlX2wbcvFecp9BP
Claudette`s     ykUWZY6KIy4bMKQild2792kmmU8GRXJV
foretasting     oHqgsHvmgyVlDUouOx9FfhoLGJpUV23I
 [...]

# 2. Search for the word 'millionth'
$ grep millionth data.txt
millionth	dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

## 🔑 Bandit8 password
```
dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc
```

