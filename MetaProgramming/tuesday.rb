class Roulette
  def method_missing(name, *args)
    person = name.to_s.capitalize
    number = 0
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end

    "#{person} got a #{number}"

  end

#  puts "cool"

end


#number_of = Roulette.new

#puts number_of.bob
#puts number_of.frank



v1 = 1

class ScopeClass

  @v2 = 2

  #puts instance_variables

  def my_method
    v3 = 3
  #  puts local_variables
 #   puts @v2
  end

  puts local_variables

end


obj = ScopeClass.new
v = 2
#obj.my_method
obj.instance_eval do
  self
  @v
end
