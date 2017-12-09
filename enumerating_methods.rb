#each is already implemented as an example, check the test for it too!
def each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

def find(array)
  i = 0
  while i < array.length
    if yield(array[i])
      return array[i]
    end
    i += 1
  end
end

def map(array)
  i = 0
  output_array = []
  while i < array.length
    if block_given?
      output_array << yield(array[i])
    end
    i += 1
  end
  output_array
end

def reject(array)
end

def select(array)
  i = 0
  output_array = []
  while i < array.length
    if yield(array[i]) == true
      output_array << array[i]
      i += 1
    else
      i += 1
    end
  end
  output_array
end

# Coding all? is optional.
def all?(array)
end

# Coding reduce is optional.
def reduce(array, starting_value = nil)
end
