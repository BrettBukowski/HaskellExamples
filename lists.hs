-- Lists contain elements of the same type. Lists can contain lists,
-- but all sub-lists must must have the same type.

-- # Concatenation

a = [1,2,3] ++ [1,2,3] -- 1,2,3,1,2,3
b = "hi " ++ "there" -- Strings are just lists of characters

-- Adding to the beginning of a list
'a':"bc"
1:[2,3]

-- # Accessing

[1,2,3] !! 0 -- 1

-- # Comparison

-- Each element is compared in turn.
[1, 2] < [1, 3]
[2, 3] > [1, 20]

-- # More list operations

head [3, 4] -- 3
tail [2, 3, 4] -- [3, 4]
last [3, 4] -- 4
init [2, 3, 4] -- [2, 3]

length [] -- 0

null [] -- True
null [1] -- False

reverse [3, 2, 1] -- [1, 2, 3]

take 1 [1, 2] -- [1]
take 3 [1, 2, 3, 4] -- [1, 2, 3]
drop 1 [1, 2] -- [2]
drop 3 [4]

maximum [3, 2, 9, 10] -- 10
minimum [3, 2, 9, 10] -- 2

sum [1, 3, 2] -- 6
product [3, 3, 3] -- 27

1 `elem` [2, 3] -- False
1 `elem` [1, 3, 2] -- True

-- # Ranges

[1..5] -- [1,2,3,4,5]
['a'..'z'] -- "abcdefghijklmnopqrstuvwxyz"
[2,4..10] -- [2,4,6,8,10]
[10,9..1] -- [10,9,8,7,6,5,4,3,2,1]

-- `cycle` takes a list and makes it infinite.
take 10 (cycle [2, 3, 1]) -- [2,3,1,2,3,1,2,3,1,2]
-- `repeat` produces an infinite list of a single element.
take 5 (repeat 1) -- [1,1,1,1,1]
-- `replicate` takes a list size and an element to repeat
replicate 5 1 -- [1,1,1,1,1]

-- # List comprehensions

[x*2 | x <- [1..10]] -- [2,4,6,8,10,12,14,16,18,20]
[x*2 | x <- [1..10], x*2 >= 12] -- [12,14,16,18,20]
[x+y | x <- [1,2,3], y <- [10,100,1000]] -- [11,101,1001,12,102,1002,13,103,1003]

length' xs = sum [1 | _ <- xs] -- Replaces every element with 1 and then adds them up.
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- Nested list comprehension
xxs = [[1, 2, 3], [3, 4, 5], [5, 6, 7]]
[ [ x | x <- xs, even x ] | xs <- xxs] -- [[2], [4], [6]]

-- Comprehensions can have multiple predicates.
[x | x <- [10..20], x /= 13, x /= 15, x /= 19] -- [10,11,12,14,16,17,18,20]

-- They can also deal with multiple lists.
[x+y | x <- [1, 2, 3], y <- [10, 100, 1000]] -- [11,101,1001,12,102,1002,13,103,1003]
