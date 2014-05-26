
# puts  File.dirname(__FILE__)

puts Dir


glob = File.join(File.dirname(__FILE__), "test", '*.rb')

puts glob

puts $:
