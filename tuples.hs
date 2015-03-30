-- # Tuples

-- Tuples have a fixed size (the size is considered part of its type) but can contain different types of elements.

(1, 3)

("a", "b", "c")

-- ## Pairs

fst (1, 2) -- 1
snd (2, 3) -- 3

zip [1,2,3] ["a", "b", "c"] -- [(1,"a"), (2,"b"), (3,"c")]
