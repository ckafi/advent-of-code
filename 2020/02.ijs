NB. input =: '1-3 a: abcde', '1-3 b: cdefg',: '2-9 c: ccccccccc'

input =: > LF cut 1!:1 <'02.input'

check_pwd_1 =: monad define
  s =. >;:y
  min =. ".0{s
  max =. ".2{s
  char =. 0{3{s
  pwd =. 4{s
  count =. +/char=pwd
  (min <: count) *. (max >: count)
)

check_pwd_2 =: monad define
  s =. >;:y
  ind1 =. 1-~".0{s
  ind2 =. 1-~".2{s
  char =. 0{3{s
  pwd =. 4{s
  1 = +/ char = (ind1,ind2) { pwd
)

+/check_pwd_1"1 input

+/check_pwd_2"1 input
