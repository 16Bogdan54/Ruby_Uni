string = ARGV[0]

counter = Hash.new(0)

#  проход по строке на внос чаров в хеш попутно ведется подсчет
string.downcase.gsub(/[^a-z]/i, '').chars.each do |с|
  counter[с] += 1
end

# вывод результата подсчета
counter.each do |с, count|
    puts "#{с}-#{count}"
end
