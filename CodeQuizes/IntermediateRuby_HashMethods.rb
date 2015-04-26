#Problem 1
languages = {
  "ruby" => "awesome",
  "javascript" => "weird, but cool",
  "java" => "don't know"
}
Return the value that corresponds with the "ruby" key.
Describe the Ruby Hash data structure at a high level.
#Answer:
languages["ruby"]
Hashes are ordered key, value pairs where Keys cannot be duplicates.

#Problem 2
Is the following hash valid?

weird_hash = {
  [1, 2, 3] => Object.new(),
  Hash.new => :mousie
}
#Answer:
Yes

#Problem 3
What does the following code return?

browsers = {
  :favorite => :chrome,
  :favorite => :firefox,
  :worst => :internet_explorer
}
browsers[:favorite]
#Answer:
:firefox, Ruby deletes the first k,v pair that has a duplicate key.

#Problem 4
Return the physical costs associated with hockey in the following sports hash.

sports = {
  :hockey => {
    :benefits => [:fun, :teamwork],
    :costs => {
      :financial => ["mad money"],
      :physical => [:concussions]
    }
  }
}
Answer:
sports[:hockey][:costs][:physical]

#Problem 5
people = [
  {:name => "bob", :age => 42},
  {:name => "frank", :age => 13}
]
Create an array of all the first names in the people array. The result should be ["bob", "frank"]

Answer:
people.map{ |p| p[:name]}

#Problem 6
class_grades = {
  :section_one => [88, 74, 64],
  :section_two => [99, 100]
}
Return an average of all the grades in :section_one and :section_two.

#Answer:
class_grades = {
  :section_one => [88, 74, 64],
  :section_two => [99, 100]
}
grades = class_grades.values.flatten
grades.inject(0) do |sum, grade|
  sum += grade
end.to_f / grades.length

#Problem 7
books = {
  :hemmingway => "old man and the sea",
  :vonnegut => ["Sirens of Titan"]
}
Show how the books hash can be rewritten with the shortcut hash syntax.

#Answer
books = { hemmingway: "old man and the sea", vonnegut: ["Sirens of Titan"] }

#Problem 8
cities = {
  santa_cruz: "chill",
  new_york: "intense"
}
Use the cities hash to print out the following strings:

"santa_cruz is chill"
"new_york is intense"

#Answer
cities = {
  santa_cruz: "chill",
  new_york: "intense"
}
cities.each {|city, feel| "#{city} is #{feel}"}


#Problem 9
movie = {
  "dude" => [],
  "where's" => "",
  "my" => {},
  "car" => Object.new
}
Use the movie hash to construct the string "dude where's my car" (notice that the keys of the movie
hash are the components of the desired string).

Answer:
movie = {
  "dude" => [],
  "where's" => "",
  "my" => {},
  "car" => Object.new
}
#Answer:

movie.keys.join(" ")

#Problem 10
dude = {
  age: 44,
  weight: 250,
  net_worth: 25
}
Return the product of all the values in the dude hash (the result should be 44 * 250 * 25 = 275_000).

Answer:
dude = {
  age: 44,
  weight: 250,
  net_worth: 25
}

dude.values.inject(1) do |product, val|
  product *= val
  product
end

#Problem 11 - How to isolate a hash from a hash
christmas = {
  santa: "ho ho ho",
  grinch: "presents destroy wealth"
}
Use the christmas hash to construct the following hash: {santa: "ho ho ho"}

Answer:

christmas.select { |k, _| k == :santa }

#Problem 12
What does the following code return? Explain.

blah = {}
sah = blah
sah[:redwall] = "awesome books!"
sah.object_id == blah.object_id

Answer: True
blah and sah are initially assigned to the same empty hash.
The hash is mutated, but both variables are still assigned to the same object,
so they have the same object id.

#Problem 13
What does the following code return? Explain.

clocks = {
  big_ben: "tick tock",
  grandfather: "dong dong"
}
big_clocks = clocks.select do |k, _|
  k == :grandfather
end
clocks.object_id == big_clocks.object_id

#Answer:
False, select does not mutate the caller


#Problem 14
What does the following code return? Explain.

haha = {a: 1, b: 2}
bozo = haha.merge!({lala: "word up"})
haha.object_id == bozo.object_id
#Answer:
True, merge! mutates the caller

#Problem 15

What does the following code return?

def blah_blah(x, y, chatter)
  chatter.map do |k, v|
    [k, v]
  end
end

blah_blah(34, 22, afi: "high school football hero", against_all_authority: "24 hour roadside resistance")

#Answer:
[[:afi, "high school football hero"], [:against_all_authority, "24 hour roadside resistance"]]
blah_blah() takes three arguments. When a hash is the last argument in a method it does not need to be delimited with {}. The hash can optionally be delimited with {}, so this code will also work:

blah_blah(34, 22, {afi: "high school football hero", against_all_authority: "24 hour roadside resistance"})


#Problem 16
videos = {yoga: "stretch it out"}
Retrieve the value associated with the :dumb_and_dumber key in the videos hash.
If the :dumb_and_dumber key is not available in the hash, return the string "no one's home".

#Answer
videos.fetch(:dumb_and_dumber, "no one's home")
The second argument to the Hash#fetch method is a default value and is optional. The default value is returned whenever the key is not present in the hash. If a default value is not specified, Hash#fetch will raise an error if the key is not found.

OR

videos[:dumb_and_dumber] || "no one's home"
videos[:dumb_and_dumber] returns nil because the :dumb_and_dumber key is not in the hash.
The Ruby || operator returns the second operand if the first operand is falsey
(the only falsey values in Ruby are false and nil), so the || operator is another way to set a default value for a hash query.

#Problem 17
simpsons = {homer: "my idol"}
What is the difference between the following lines of code?

simpsons.fetch(:bart)
simpsons[:bart]

Answer:
simpsons.fetch(:bart) raises an exception because the :bart key is not present in the simpsons hash (if a second argument was added to the fetch() method, the default value would be returned instead of raising an exception).

simpsons[:bart] returns nil because the :bart key is not present in the simpsons hash.

#Problem 18
Create a hash with a default value of "cheese" so the hash returns the string "cheese" if a key that does not exist in the hash is requested.

#Answer:
food_hash = Hash.new("cheese")
food_hash[:apple] = "tangy"
food_hash[:funky]

#Problem 19
Use the following Person class to create a person object with the first_name "Mohammed" and the age 12.

class Person
  def initialize(args)
    @first_name = args.fetch(:first_name)
    @age = args.fetch(:age)
  end
end
#Answer
mohammed = Person.new({first_name: "Mohammed", age: 12})

#Problem 20
some_hash = {a: 123, b: 456}

Convert some_hash to [[:a, 123], [:b, 456]]

#Answer
some_hash.map(&:to_a)
#OR
some_hash.map do |a, b|
  [a,b]
end

#OR
some_hash.to_a

#Problem 21
h1 = {surfing: "fun"}
h2 = {rock_climbing: "scary"}
Use h1 and h2 to construct the following hash: {:surfing => "fun", :rock_climbing => "scary"}
Answer:
h1.merge(h2)

#Problem 22
singers = {
  kesha: "fun",
  pitbull: "how is this dude famous?",
  missy_elliot: "really smart"
}
Create an array of the values associated with the :kesha and :missy_elliot keys.

#Answer:
singers.keys.values_at(0,2)

#Problem 23
boring_hash = {}
Return true if the boring hash has no elements and false otherwise.

#Answer
boring_hash.empty?

# OR

boring_hash.length == 0

#Problem 24
people = [["bob", 320], ["edgar", 152], ["maria", 125]]
Convert the people array to the following hash: {"bob" => 320, "edgar" => 152, "maria" => 125}


#Answer:
people.to_h
#or
Hash(people)

#Problem 25
animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]
Convert animals to {'dogs' => 11, 'cats' => 3}

Answer:
animals.inject(Hash.new(0)) do |memo, (animal, num)|
  memo[animal] += num
  memo
end

#Problem 26
Monkey patch the Hash class and define a method called all_values_even? t
hat returns true if all the values in a Hash are even.

class Hash

  def all_values_even?
    self.values.all?(&:even?)
  end
end







