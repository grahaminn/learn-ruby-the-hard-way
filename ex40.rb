class Song

  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing_me_a_song()
    for line in @lyrics
      puts line
    end
  end
end

happy_bday = Song.new(["Happy birthday to you",
                       "I don't want to get sued", 
                       "So I'll stop right there"])

bulls_on_parade = Song.new(["They rally around the family",
                            "With pockets full of shells"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

come_as_you_are_lyrics = ["Come, as you are, as you were", "As I want you to be"]
come_as_you_are = Song.new(come_as_you_are_lyrics)
come_as_you_are.sing_me_a_song()
