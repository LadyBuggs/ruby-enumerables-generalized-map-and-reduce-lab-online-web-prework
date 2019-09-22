require "pry"

def map(array)
  new_array = []
  i = 0
  while i < array.length do
    new_array << yield(array[i])
    i += 1 
  end
  new_array
end 

def reduce(array, sv = nil)
  value = 0 
  i = 0 
  if sv.is_a? Integer
    value = sv + value
  else
    value = array[0]
    i = 1 
  end
  while i < array.length do
   value =  yield(value, array[i])
   i += 1 
  end
  value
end 