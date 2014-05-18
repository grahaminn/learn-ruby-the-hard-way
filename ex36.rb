#!/usr/bin/ruby

def prompt()
  print "> "
end

def palmer_house()
  puts "Mrs. Palmer answers the door. There are dark circles under eyes and she looks like she's been crying."
  puts "The sounds of Leland singing drifts down the stairs."
  puts "Are you going to question Mrs. Palmer, go upstairs to speak to Leland, or leave ?"

  prompt; next_move = gets.chomp
  palmer_house_choice(next_move)
end

def palmer_house_choice(next_move)

  if next_move == "question Mrs. Palmer"
    puts "She cries and tells you all about the last time Laura left the house."
    puts "Then she jams some pills into her mouth and passes out on the couch."
    puts "Do you go upstairs, or do you leave?"
    prompt; next_move = gets.chomp
    palmer_house_choice(next_move)
  elsif next_move == "go upstairs"
    puts "Leland is in Laura's room crying. You catch sight of a mirror, and instead of seeing your own face, you see a midget in a Tuxedo."
    black_lodge()
  elseif next_move == "leave"
    the_diner()
  else
    puts "I got no idea what that means."
    palmer_house()
  end
end

def the_diner()
  puts "You are in an old-fashioned diner, with a view of the gas lot, and the woods."
  puts "You can smell pie in the oven. Norma smiles and comes over to take your order."
  puts "Are you going to order pie, talk to Norma, or leave?"

  prompt; next_move = gets.chomp

  if next_move == "order pie"
    puts "Oh god, that's some delicious pie."
    the_diner()
  elsif next_move == "talk to Norma"
    puts "Norma tells you that sad story of how Laura used to talk to all the customers."
    palmer_house()
  elsif next_move == "leave"
    palmer_house()
  else
    puts "I got no idea what that means."
    the_diner()
  end
end

def black_lodge()
  puts "Here you see a room with a deep red carpet & velvet curtains. A midget dances to silent music."
  puts "He begins talking backwards."
  puts "Do you listen to him, shoot him or wake up?"

  prompt; next_move = gets.chomp

  if next_move == "listen"
    palmer_house()
  elsif next_move == "shoot"
    dead("The bullet goes straight through the dwarf, blood spreads across the white shirt of his tux. He smiles, evily.")
  elsif next_move == "wake"
    the_diner()
  else
    back_lodge()
  end
end

def dead(why)
  puts "#{why}  Good job!"
  Process.exit(0)
end

def start()
  puts "You are standing on the road at the entrance to a small town in the woods. 'Twin Peaks'"
  puts "You are here to investigate the murder of Laura Palmer."
  puts "A faint smell of pie reaches your nostrils. Do you want pie, or do you want to start to investigate?"

  prompt; next_move = gets.chomp

  if next_move == "pie"
    the_diner()
  elsif next_move == "investigate"
    palmer_house()
  else
    dead("You stumble around the woods until Windham Earle finds you..")
  end
end

start()
