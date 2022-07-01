require_relative 'lib/linked_list'
require_relative 'lib/node'

test = LinkedList.new
test.append(1)
test.append(2)
test.append(3)
test.append(4)
test.append(5)
test.append(6)
test.append(7)
test.to_s
test.prepend(0)
test.to_s
puts test.size
test.at(10)
test.pop
test.to_s
puts test.contains?(2)
puts test.find(2)
test.to_s
puts "break"
test.insert_at(2, 5)
test.to_s
test.to_s
test.remove_at(3)
test.to_s
test.remove_at(0)
test.to_s