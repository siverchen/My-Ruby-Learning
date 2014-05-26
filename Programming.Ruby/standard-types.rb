# numbers
num = 81
puts num.size

puts num.zero?

puts 0.zero?


puts num.to_i.class

6.times do 
  puts "#{num.class}: #{num}"
  num *= num
end

#loop

#3.times { print "X " }

#1.upto(5) {|i| print i, " "}

#99.downto(95) {|i| print i, " "}

#50.step(80, 5) {|i| print i, " "}



# string

# array

# dictionary

# set

#class

class Base 

  cattr_accessor  :settings

end

class MySubClass < Base

end


sub =  MySubClass.new


sub.settings = "sss"



