def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements_from_to(array, index, destination_index)
  index_placeholder_value = array[index]
  destination_placeholder_index = array[destination_index]

  array[destination_index] = index_placeholder_value
  array[index] = destination_placeholder_index

  array
end

def swap_elements(array)
  swap_elements_from_to(array, 1, 2)
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  array.collect do |item|
    item[2] = '$'
    item
  end
end

def find_a(array)
  array.select do |item|
    item.downcase.start_with?("a")
  end
end

def sum_array(array)
  array.reduce(:+)
end

def add_s(array)
  array.collect.with_index do |item, index|
    index != 1 ? item + "s" : item
  end
end