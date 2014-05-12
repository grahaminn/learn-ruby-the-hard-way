def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket."
  puts # a blank line
end

puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

def grapes_and_wine(bunch_size, litres_of_wine)
  puts "You have #{bunch_size} grapes!"
  puts "You have #{litres_of_wine} litres of wine!"
  puts "That's enough for a bacchanal!"
end

grapes_and_wine(10,1)
grapes_and_wine(9,2)
grapes_and_wine(8,3)
grapes_and_wine(7,4)
grapes_and_wine(6,5)
grapes_and_wine(5,6)
grapes_and_wine(4,7)
grapes_and_wine(3,8)
grapes_and_wine(2,9)
grapes_and_wine(1,10)
