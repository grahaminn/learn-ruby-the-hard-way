class Game

  def initialize(start)
    @quips = [
      "A giant boot descends from the sky and flattens you",
      "DINS-DALE?!?",
      "Always look on the bright side of life"
    ]
    @start = start
  end

  def prompt()
    print "> "
  end

  def play()
    next_room = @start

    while true
      puts "\n--------"
      room = method(next_room)
      next_room = room.call()
    end
  end

  def death()
    puts @quips[rand(@quips.length())]
    Process.exit(1)
  end

  def bridge()
    puts "You're at a bridge. There is a knight guarding it."

    prompt()
    action = gets.chomp()

    if action == "charge!"
      puts "The knight chops your leg off"
      return :death
    elsif action == "dodge!"
      puts "The knight chops your arm off"
      return :death
    elsif action == "tell a joke"
      puts "<the parrot sketch>"
      return :the_castle
    elsif action == "Ni?"
      puts "Ni!"
      return bridge 
    else
      puts "DINSDALE?!"
      return :the_bridge
    end
  end

  def the_castle ()
    puts "A beautiful woman leans out of a tower, she has long blonde hair"
    prompt()
    action = gets.chomp()
    if action == "rapunzel, rapunzel, let down your hair" or action == "cheat"
      return :restaurant
    else
      return :death
    end
  end

  def restaurant()
    puts "You're in a restaurant with Mr. Creosote"
    puts "'Fuck off I'm full'"
    action = gets.chomp()

    if action != 'pat his stomach'
      puts "Mr Creosote begins to break wind uncontrollably"
      puts "His intestines suddenly convulse, and digestive gases blow his rib cage apart with the force of a hand grenade"
      puts "Oh no."
      return :death
    else
      puts "He belches gently but continuously for 5 minutes, then falls asleep.  You won!"
      Process.exit(0)
    end
  end
end

a_game = Game.new(:bridge)
a_game.play()
