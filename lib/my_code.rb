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
  if sv
    num = sv
  else
    num = array
  while i < array.length do
    if value.to_i
    value = value + array[i]
    i += 1 
  else
    i += 1 
  end 
  end
  value
end 