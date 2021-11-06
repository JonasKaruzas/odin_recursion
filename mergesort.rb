def mergesort(arr)
  if arr.length > 1
    left_side = arr[0..arr.length / 2 - 1]
    right_side = arr[arr.length / 2..arr.length - 1]
    left = mergesort(left_side)
    right = mergesort(right_side)
    merge(left, right)
  else
    arr
  end
end

def merge(left, right, arr_a = [])
  idx_left = 0
  idx_right = 0

  while idx_left < left.length && idx_right < right.length
    if left[idx_left] < right[idx_right]
      arr_a << left[idx_left]
      idx_left += 1
    else
      arr_a << right[idx_right]
      idx_right += 1
    end
  end

  if idx_left == left.length
    arr_a += right[idx_right..right.length - 1]
  else
    arr_a += left[idx_left..left.length - 1]
  end
  
  arr_a
end


p mergesort([9,2,1,5,77,3,88,3,237,44])