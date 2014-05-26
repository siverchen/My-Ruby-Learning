my_name = "chenlei"
my_age = 27
my_height = 172
my_weight = 65
my_eyes = "black"
my_teeth = "White"
my_hair = "Brown"

puts "Let's talk about %s." % my_name

puts "He's %d inched tall." % my_height

puts "He's %d pounds heavy." % my_weight

puts "Actually that's not too heavy."

puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]

puts "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right

puts "If I add %d, %d and %d I get %d." % [my_age, my_height, my_weight, my_age + my_height + my_weight]

