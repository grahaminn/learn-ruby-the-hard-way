#!/usr/bin/ruby

def push_numbers(number, increment)
  numbers = []
  for i in (0..number)
    puts "At the top i is #{i}"
    numbers.push(i)

    i = i + increment
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end

  puts "The numbers: "

  for num in numbers
    puts num
  end
end

push_numbers(5, 3)
push_numbers(6, 1)
