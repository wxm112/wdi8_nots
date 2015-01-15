require 'pry'

# A
a = ["Anil", "Erik", "Jonathan"]
# 1
p a[1]
# 2
p a << 'May'


# B
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# 1
p h[1]
# 2
p h[:two]
# 3
p h['two']
# 4
p h[3] = "Three"
p h
# 5
p h[:four] = 4
p h

# C
is = {true => "It's true!", false => "It's false"}
# 1
p is[2 + 2 == 4]
p "It's true!"
# 2
p is["Erik" == "Jonathan"]
"It's false"
# 3
p is[9 > 10]
"It's false"
# 4
p is[0]
p nil
# 5
p is["Erik"]
p nil



# D
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
binding.pry
# 1
p users["Jonathan"][:twitter]
# 2
p users['Erik'][:favorite_numbers] << 7
# 3
p users['May'] =  {:twitter => "wxm112", :favorite_numbers => [6,8,9]}
p users
# 4
p users["Erik"][:favorite_numbers]
# 5
p users["Erik"][:favorite_numbers].sort.first
# 6
p users["Anil"][:favorite_numbers].select {|n| n.even?}
# 7
# p array = users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]
array = []
users.each_value {|v| array << v[:favorite_numbers]}
array.flatten
# 8
p array.flatten.sort.uniq











