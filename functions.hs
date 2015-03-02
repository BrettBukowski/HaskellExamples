doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleMe 1       -- 2
doubleUs 1 2     -- 6

-- If expressions must have a corresponding else.
doubleSmallNumber x = if x > 100
  then x
  else x*2

-- Functions can't begin with a capital letter.