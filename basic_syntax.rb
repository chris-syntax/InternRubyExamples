#!/usr/bin/ruby

# This is a comment in Ruby.
def hello_world(name, hello = "hello", world: true)
  final_word = world ? "world" : name
  "#{hello} #{final_word}"
end

10.times do |i|
  puts hello_world(i / 2.to_f, world: false)
end

puts hello_world(nil, "Hey there")

array = ["First", "Second", "Third"]

puts array.join(', ')

hash = {
  first: 1,
  second: 2,
  third: 3
}

hash.each do |key, value|
  puts "#{value} is #{key}"
end