find inhere -size 1033c -print0 | xargs -0 cat | awk '{sub(/ */,"")} NF'
