def my_while(condition)
  loop do 
    yield
    break if !condition
  end
end

##########

def my_each(array)
  i = 0
  #collect = []
  while i < array.length
    #'collect <<' goes on line 15 before yield
   yield(array[i])
   i += 1
  end
  array #collect
end

my_each(array) do |i|
  puts "I am #{i}"
end

##########


def my_collect(array)
  i = 0
  collect = []
  while i < array.length
   collect << yield(array[i])
   i += 1
  end
  collect
end

my_collect(array) do |i|
  puts "I am #{i}"
end



def my_select(array)
  i = 0
  select = []
  while i < array.length
    if(yield(array[i]))
      select << array[i]
    end
    i += 1
  end
  select
end

  array = [1,2,3]

  my_select(array) do |i|
    i.odd?
  end

def my_none?(array)

i = 0
  
  while i < array.length
    if(yield(array[i]))
      return false
    end
    i += 1
  end
  true
end

my_none?(array) do |i|
  i.is_a?(String)
end

