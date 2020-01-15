require 'pry'

def map(array)
  result = []
  counter = 0 
  
  while counter < array.length do
    result << yield(array[counter])
    counter += 1
  end
  result
end


def reduce(array, starting_value = nil)
  counter = 0 
  
  if starting_value
    result = starting_value
    first_elemnt = array[counter + 1] 
   else
     
    
     
      
  end
  
  while counter < array.length do
    if array[counter] == true
      result = true
    elsif array[counter] == false
      result = false
    else
      result = yield(result, array[counter]) 
    end 
    counter += 1
  end
  result
end
