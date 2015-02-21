-- # Language Basics

-- ## Infix functions

2 + 3
3 - 2
5 / 2 -- 2.5

True && False      -- False
False || True      -- True
not False          -- True

-- Types must be the same to do comparisons.
5 == 5             -- True
5 /= 5             -- False
"yo" == "yo"       -- True


-- ## Prefix functions

succ 9             -- 10
min 10 9           -- 9
max 10 9           -- 10

-- Function application has the highest precedence

succ 9 * 10        -- 100
succ (9 * 10)      -- 91

-- If a function takes two arguments, it can be used as an infix w/ backticks.

10 `max` 9         -- 10
