#Problem 1.
arr = ['onyx', 'wu tang', 'biggie']
Get the 'biggie' string from arr. Explain how arrays are ordered

Answer:
arr.pop, arr[2], arr[-1], arr.last
Arrays are indexed.

#Problem 2
arr = [:cool, "freezing", -10, Object.new]
Explain how the arr array contains different types of objects.
Answer:
symbol, string, integer, instance. An array is an collection of objects
that is indexed, not unique, unlike sets which are undordered, unique and
not indexed.

#Problem 3
# Example #1:
my_array = [10, 20, 30]
my_array[0] = "bob"

# Example #2:
another_arr = [10, 20, 30]
another_arr.map {|num| num == 10 ? "bob" : num}
Example #1 and Example #2 both result in the ["bob", 20, 30] array. What is the key difference between the two examples?
Answer: Example 2 does mutates the array while Example 1 does.

#Problem 4
Identify the components of the following code
(i.e. the method name, arguments, code block, etc.):

[1, 2, 3].map {|num| num ** 2}

#Problem 5
Identify the components of the following code (i.e. the method name, arguments, and code block).

['a', 'b'].each do |letter|
  hangout = letter + ' bar'
  p hangout
end

#Problem 6
colors = ['red', 'violet', 'blue']
Use the colors array to construct the following array:

[['red', 1], ['violet', 2], ['blue', 3]]

Answer:
colors.map.with_index {|color, index| [color, index + 1]}

#Problem 7
Create an array of the numbers 1 though 100 (i.e. [1, 2, 3, ..., 99, 100]).

Answer:
(1..100).to_a

#Problem 8
Create an array of all the numbers between 1 and 100 that are divisible by both 3 and 5.

(1..100).to_a.select do |num|
  num % 3 == 0 && num % 5 ==0
end

#Problem 8
fib = [0, 1]
Use fib to create the following array: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
Notice that these are the first ten numbers in the Fibonocci sequence and each number equal the sum
of the prior two numbers.

while fib.length < 10
  fib.push(fib[-1] + fib[-2])
end

#Problem 9
blockbusters = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]
Use the blockbusters array to construct the following hash:

{"will smith" => "i am legend", "brad pitt" => "fight club", "frodo" => "the hobbit"}

Answer:
blockbuste.to_h, Hash[blockbusters]

#Problem 10
players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
Use the players array to construct the following array: ["kelly", "cent", "cyrus"]
Answer:
players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
artists = []
players.each do |x,y|
  artists <<  y
end
OR
players.map! { |x,y| y }

#Problem 11
numbers = [1, 2, 3, 4]
Sum all the elements in the numbers array.
Answer:
numbers.inject(:+)
OR
result = 0
numbers.each do |number|
  result += number
end
result # equals 10

# OR

numbers.inject(0) do |sum, number|
  sum += number
  sum
end

#Problem 12
nums = [1, 2, 3]
letters = ['a', 'b', 'c']
Use nums and letters to construct the following array:

[[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]]

Answer:
nums = [1, 2, 3]
letters = ['a', 'b', 'c']
num_let = []
nums.each do |num|
  letters.each do |let|
    num_let << [num, let]
  end
  num_let
end
#map will NOT work because it will output an array

nums = [1, 2, 3]
letters = ['a', 'b', 'c']
nums.map do |num|
  letters.map do |let|
    [num,let]
  end
end


#Problem 13
numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']
Use numbers and suits to construct the following array (represents the 52 cards in a deck):
[["2", "spades"], ["3", "spades"] ... ["K", "clubs"], ["A", "clubs"]]

Answer:
numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']
deck = []
numbers.each do |num|
  suits.each do |suit|
    deck << [num,suit]
  end
end

#Problem 14
music = [["blind melon", "no rain"], ["sublime", "40 oz to freedom"], ["damian marley", "jr gong"]]
Use the music array to construct the following hash:

{"blind melon" => "no rain", "sublime" => "40 oz to freedom", "damian marley" => "jr gong"}
Answer:
Hash[music]
OR
music.to_h
OR

music = [["blind melon", "no rain"], ["sublime", "40 oz to freedom"], ["damian marley", "jr gong"]]
music_hash = {}
music.each do |artist, title|
  music_hash[artist] = title
end

#Problem 15
fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]
Use fav_numbers to create the following array (all the even numbers):

[2, 4, 10, 20]
Answer:
fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]

fav_numbers.select { |x| x % 2 == 0}

OR

fav_numbers.select {|num| num.even?}
#Problem 16

Add a all_start_with_a? method to the Array class that returns true if every String element in an array starts with the letter "a".

["all", "in", "the", "family"].all_start_with_a? # should return false
["aardvark", "anteater"].all_start_with_a? # should return true

Answer:
Monkeypatching

class Array
  def starts_with_a?
    self.all? do |word|
      word[0] == "a"
    end
  end
end
#Problem 17
What is the sum of all the numbers between 0 and 100 that are divisible by both 3 and 5?

(0..100).to_a.inject(0) do |memo, number|
  memo += number if number % 3 == 0 && number % 5 == 0
  memo
end

# OR

(0..100).to_a.select do |number|
  number % 3 == 0 && number % 5 == 0
end.inject do |memo, number|
  memo += number
  memo
end

#Problem 18
manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']
Create an array of all elements in the manly array that contain the word "man".
The return value should be:

["batman", "manbot", "nah man, nah"]

Answer:
manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']
manly.select { |word| word.include?("man") }



# OR

manly.select {|word| word.match /man/ }

#Problem 19
days = ['mon', 'tues', 'wed', 'thur', 'fri']
Create an array of the elements with indexes 0 and 2. The return value should be ['mon', 'wed'].

Answer:
days.values_at(0, 2)

# OR

days.select.with_index { |_, index| [0,2].include? index }

#Problem 20
Convert c = [[1, "a"], [2, "b"], [3, "c"]] to [1, "a", 2, "b", 3, "c"]

Answer:
c.flatten

#Problem 21
Create the following array:
[["", "", ""], ["", "", ""], ["", "", ""]]
Answer:
Array.new(3) {Array.new(3, "")}

#Problem 22
Convert a = [["row", 3], ["your", 1], ["boat", 1]] to ["row", "row", "row", "your", "boat"].
The first element in the nested arrays is the word that should be displayed and the second element in t
he nested array is the number of times the word should be displayed.

Answer:
a.map { |word, num| [word].cycle(times).to_a}.flatten
#OR
a.inject([]) do |output, (word, num)| num.times {output << word}; output}














