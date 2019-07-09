#!/usr/bin/ruby

class Person

  attr_accessor :name

  @@times_initialized = 0

  def initialize name
    @@times_initialized += 1
    @name = name
  end

  def put_name_and_profession
    puts "#{@name} has no profession."
  end

  def put_times_initialized
    puts "Initialized #{@@times_initialized} times."
  end

end

class Developer < Person

  def put_name_and_profession
    puts "#{@name} is a developer."
  end

end

john = Person.new "John"
john.put_name_and_profession
john.put_times_initialized

chris = Developer.new "Chris"
chris.put_name_and_profession
john.put_times_initialized