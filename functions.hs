doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleMe 1       -- 2
doubleUs 1 2     -- 6

-- If expressions must have a corresponding else.
doubleSmallNumber x = if x > 100
  then x
  else x*2

-- Functions can't begin with a capital letter.

-- Infix functions

a `gt` b = if a > b then True else False

-- # Type declarations

removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]

-- # Pattern matching

-- Create separate function bodies for different patterns
factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

tell :: (Show a) => [a] -> String
tell [] = "empty list"
tell (x:[]) = "the list has one element: " ++ show x
tell (x:y:[]) = "the list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "long list"

-- `(x:[])` and `(x:y:[])` can be rewritten as `[x]` and `[x,y]`, but `(x:y:_)` cannot
-- because it matches any list of two or more.

-- ## As patterns

-- As-patterns allow you to break up an item according to a pattern while still keeping
-- a reference to the entire original pattern by prefixing with a name and an @ character.

firstLetter :: String -> String
firstLetter "" = ""
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

-- # Guards

-- A guard is indicated by a pipe character (|), followed by a Boolean expression, followed by the function body that will be used if that expression evaluates to True.
-- If the expression evaluates to False, the function drops through to the next guard, and the process repeats.
-- Guards must be indented by at least one space.

guessNumber :: Int -> String
guessNumber num
    | num < 43 = "Too small"
    | num > 43 = "Too big"
    | otherwise = "Got it!"
