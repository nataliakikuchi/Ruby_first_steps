def duplicates(arr)
    repeated = []
    counter = 0
    while counter <= arr.length - 1 do
        repeated.push(arr[counter]) if arr[counter] == arr[counter + 1]
      counter += 1
    end
  end

assert_equals(duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, '5']).sort, [1, 3, 4])
assert_equals(duplicates([0, 1, 2, 3, 4, 5]), [])