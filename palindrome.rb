=begin
Для програми було обрано структуру даних стек.
Оскільки властивість стеку така що ми можемо
витягнути у реверсивному порядку вміст покладений раніше
я зрозумів що можна просто покласти чари в стек і дістати,
а потім перевірити все і дати відповідь
=end

class Stack
  def initialize
    @stack = []
  end

  def push(element)
    @stack.push(element)
  end

  def pop
    @stack.pop
  end

  def peek
    @stack[-1]
  end

  def size
    @stack.size
  end

  def empty?
    @stack.empty?
  end
end

def reverse(string)

  stack = Stack.new

  string.each_char { |c| stack.push(c) }
  reversed_string = ""

  until stack.empty?
    reversed_string += stack.pop
  end
  reversed_string

end

def palindrome_check(string)

  reversed_string = reverse(string)

  if string == reversed_string
    puts "#{string} is a palindrome"
  else
    puts "#{string} isn't a palindrome"
  end

end

words = %w[kayak rotator asia civic kimpab busan]

words.each do |word|
  palindrome_check(word)
end
