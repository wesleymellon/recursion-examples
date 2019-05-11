def merge_sort(list)
  if list.length <= 1
    return list
  else
    merged_left = merge_sort(list[0...list.length/2])
    merged_right = merge_sort(list[list.length/2..list.length])
    merge(merged_left, merged_right)
  end
end
    

def merge(left, right)
  merged_list = []
  until left.empty? || right.empty?
    if left.first <= right.first
      merged_list << left.shift
    else
      merged_list << right.shift
    end
  end

  merged_list += left + right

end

p merge_sort([1,2,3,4,5,9,6])
p merge_sort([5,4,3,2,1])
p merge_sort([1,3,1,6,10,14,12,2,2])