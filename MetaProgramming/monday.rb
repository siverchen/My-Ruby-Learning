class Greeting
  def initialize(text)
    @text = text
  end

  def welcome
    @text
  end

end


my_object = Greeting.new("Hello")

class Array
  def replace(from, to)
    each_with_index do |e, i|
      self[i] = to if e == from
    end
    return self
  end
end

def text_replace
  book_topics = ['html', 'java', 'css']
  book_topics.replace('java', 'ruby')
  expected = ['html', 'ruby', 'css']
  puts book_topics
end


module MyModule
  MyConstant = 'Outer constant'


  class MyClass
    MyConstant = 'Inner constant'

  end
end


# puts MyModule::MyConstant

module M
  Y = 'another constant'
  puts self
  class C
    puts self
    ::M::Y
  end
end

puts M::C
