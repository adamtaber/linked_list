require_relative 'lib/linked_list'
require_relative 'lib/node'

test = LinkedList.new
test.append(1)
test.append(2)
test.append(3)
test.to_s
test.prepend(0)
test.to_s
puts test.size
puts test.at(3)
test.pop
test.to_s
puts test.contains?(2)
puts test.find(2)