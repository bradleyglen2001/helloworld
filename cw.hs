

fib 0 = 1
fib 1 = fib 0 + 1
fib x = fib (x -1) + fib (x -2)

myfib = 1:1:zipWith (+) myfib (tail myfib)

--this is a note
--second note
memoized_fib :: Int -> Integer
memoized_fib = (map thefib [0 ..] !!)
   where thefib 0 = 0
         thefib 1 = 1
         thefib n = memoized_fib (n-2) + memoized_fib (n-1)


add x y = x + y