require 'pry'

def my_all?(collection)
  i=0 
while i < collection.length 
yield (collection[i])
     i = i+1
  end
end

my_all?([1,2,3]) {|i| i < 2}

def my_all?([1,2,3])
  i = 0
  while i < 3
    yield(1)
    i = 0 + 1
  end
end

my_all?([1,2,3]) {|1| 1 < 2}

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i = i + 1
  end
end

