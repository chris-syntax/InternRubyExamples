#!/usr/bin/ruby

module PrintTwice

  def print_twice
    2.times do |i|
      puts yield i
    end
  end

  def self.print_time
    puts Time.now
  end

end

module Container
  class PrintNames

    include PrintTwice

    def initialize(names)
      @names = names
    end

    def print_names
      print_twice do |i|
        @names[i]
      end
    end

  end
end

PrintTwice.print_time

names_printer = Container::PrintNames.new(["Elle", "Daisy", "Tika"])

names_printer.print_names