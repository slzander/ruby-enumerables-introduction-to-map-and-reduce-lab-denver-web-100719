def map_to_negativize (source_array)
  i = 0 
  while source_array[i] do
    source_array[i] *= -1
    i += 1
  end
  return source_array
end

def map_to_no_change(source_array)
  return source_array
end

def map_to_double (source_array)
  i = 0 
  while source_array[i] do
    source_array[i] *= 2 
    i += 1
  end
  return source_array
end 

def map_to_square (source_array)
  i = 0 
  while source_array[i] do
    source_array[i] *= source_array[i]
    i += 1
  end
  return source_array  
end




def reduce_to_total (source_array, starting_point = 0)
  i = 0 
  source_array[i] += starting_point
  i = 1
  n = 0 
  while source_array[i] do 
    source_array[i] += source_array[n]
    i += 1 
    n += 1
  end 
  return source_array[n]
end




def reduce_to_all_true (source_array)
  i = 0
  while i < source_array.length do
    if source_array[i]
      i += 1 
    else
      return false  
    end 
  end
  return true 
end


def reduce_to_any_true (source_array)
  i = 0 
  while i < source_array.length do
    if source_array[i]
      return true 
    else
      i += 1 
    end
  end
  return false 
end

