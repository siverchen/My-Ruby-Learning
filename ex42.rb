class Game

  def initialize(start)
    @quips = [
      "You died. You kinda suck at this.",
      "Nice job, you died ... jackass.",
      "Such a luser.",
      "I have a small puppy that's better at this."
      ]

    @start = start;
    puts "in init @start = " + @start.inspect
  end
  
  def prompt
    print "> "
  end



  def play()
    puts "@start => " + @start.inspect

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


  def central_corridor()
    puts "The Gothons of Planet Percal #25 have invaded your ship and destoryed"

    puts "your entire crew. You are the last surviving member and your last"

    puts "mission is to get hte neu tron...."

    prompt()

    action = gets.chomp()

    if action == "shoot!"
      puts "........asdfasdfas"
      return :death

