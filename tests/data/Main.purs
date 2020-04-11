module Main  where

import Prelude
import List as L

t = 1 + 1
t1 = 1 * 1
t2 = 1.111 * 8.75

t3 = 9.99 - 7.64

type Position = { x :: Number
                , y :: Number
                }

p = { x: 10.0
    , y: 30.2
    }

p1 = moveUp p

moveUp :: Position -> Position
moveUp p = p{y=p.y+10.0}

list :: Array Int
list = [1,2,3,4]

data Person = P { name :: String
                , age :: Int
                , postiont :: Position
                }
type NewName = String

rename :: NewName -> Person -> Person
rename nm (P p) = P (p{name = nm})

personMoveUp :: Person -> Person
personMoveUp (P p) = P (p{postiont = moveUp p.postiont})

person = P { name: "Yang"
            , age: 27
            , postiont: p
            }
listPerson :: Array Person
listPerson = [person]
person1 = rename "Wang" person
person2 = personMoveUp person1


fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib x = fib (x-1) + fib (x-2)

fib10 = fib 10

fun x = if x > 30
        then "too much!"
        else if x > 20
             then "maybe ok"
             else "ok!"
fun1 = fun 35
fun2 = fun 25
fun3 = fun 10

test :: Int -> Int -> String
test 1 1 = "nice"
test 1 2 = "hello"
test 1 3 =  "great"
test _ _ =  "yes"

test1 :: Int -> Int
test1 x | x > 100 = 100
        | x > 85 = 85
        | x > 65 = 60
        | otherwise = 20


data Result = RI Int
            | RS String

test2 x y = case x, y of
              "hello",x -> RI x
              s,_ -> RS s


dealResult :: String -> Int -> Int
dealResult x y = dr (test2 x y)
  where dr (RI i) = i
        dr (RS s) = 10

d1 = dealResult "hello" 20
d2 = dealResult "world" 1

d3 = notEq 1 2

listp :: L.List Person
listp = L.replicate 5 person

listp1 = L.map personMoveUp listp

add1 = L.map (\x -> x + 1) (L.replicate 5 1)
res1 = L.filter (\x -> x > 5) (L.createN 10)























