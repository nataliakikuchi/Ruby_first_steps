# 1. Write a Ruby program to check whether a value exists in an array.

colors = ['red', 'green', 'blue']
colors.include? 'red' #=> true
colors.include? 'yellow' #=> false

# 2. Write a Ruby program to check whether 7 appears as either the first or last element in a given array. The array length must be 1 or more.

def check_number(array_of_numbers)
    return (array_of_numbers[0] == 7 || array_of_numbers[array_of_numbers.length-1] == 7)
end

print check_number([1, 2, 7]),"\n"
print check_number([7, 1, 2, 3]),"\n"
print check_number([14, 7, 1, 2, 3])

# 3. Write a Ruby program to pick number of random elements from a given array.

random_numbers = [1, 3, 5, 7, 8 ,9, 14, 16]
print "\n 2 random elements from the array. \n"
print random_numbers.sample(2)

# 4. Write a Ruby program to check whether first and the last element are the same of a given array of integers. The array length must be 1 or more.

def check_number(array_of_numbers)
    return (array_of_numbers.length >= 1 && array_of_numbers[0] == array_of_numbers[array_of_numbers.length - 1])
end

print check_number([7, 2, 7]),"\n"
print check_number([7, 1, 2, 3]),"\n"
print check_number([14, 7, 1, 2, 3])

# 5. Write a Ruby program to compute the sum of elements in a given array.

my_numbers = [12, 17, 33]

print my_numbers[0] + my_numbers[1] + my_numbers[2]
print my_numbers.inject(0) { |sum, x| sum + x }

# [3, 6, 10].inject {|sum, number| sum + number} =>|3, 6| 3 + 6 => 9
#                                                =>|9, 10| 9 + 10 =>19

# 6. Write a Ruby program to remove duplicate elements from a given array.

my_numbers = [1, 4, 5, 6, 7, 8, 8, 8, 12, 12, 12, 17, 33, 34, 35, 39, 40, 40]
non_repeated_numbers = my_numbers.uniq
print non_repeated_numbers

# 7. Write a Ruby program to check two given arrays of integers and test whether they have the same first element or they have the same last element. Both arrays length must be 1 or more.

def check_same_element(first_array, second_array)
    return (first_array[0] == second_array[0] || first_array[first_array.length - 1] == second_array[second_array.length - 1])
end

print check_same_element([1, 3, 8, 5], [7, 5]),"\n"
print check_same_element([1, 2, 3, 44], [7, 3, 2]),"\n"
print check_same_element([1, 2, 4], [1, 4])

# 8. Write a Ruby program to remove blank elements from a given array.

colors = ["Red", "Green", "", "Blue", "White"]
colors_without_blanks = colors.reject { |color| color.empty? }
print colors_without_blanks

# 9. Write a Ruby program to compute the sum of all the elements. The array length must be 3 or more.

def sum_elements(array_of_numbers)
    return (array_of_numbers[0] + array_of_numbers[1] + array_of_numbers[2])
end

print sum_elements([33, 35, 78])

# 10. Write a Ruby program to split a delimited string into an array.

colors = "Pink, Red, Green, Blue, White"
nums = "1, 3, 4, 5, 7"

array_of_colors = colors.split(",")
array_of_numbers = nums.split(",").map { |array_item| array_item.to_i }
print array_of_colors
print array_of_numbers

# 11. Write a Ruby program to create an array with the elements "rotated left" of a given array of ints length 3.

def check_array(numbers)
    rotated = numbers[1], numbers[2], numbers[0];
	return rotated;
end
print check_array([1, 2, 5]),"\n"
print check_array([1, 2, 3]),"\n"
print check_array([1, 2, 4])

# 12. Write a Ruby program to create a new array with the elements in reverse order from a given an array of integers length 3.

def check_array(nums)
    reversed = nums[2], nums[1], nums[0]
	return reversed;
end

print check_array([1, 2, 5]),"\n"
print check_array([1, 2, 3]),"\n"
print check_array([1, 2, 4])

# 13. Write a Ruby program to find the larger between the first and last elements of a given array of integers of length 3. Replace all the other values to be that value. Return the changed array.

def check_array(nums)
    maxVal = []
   	maxVal[0] = nums[0]
	if(nums[2] >= maxVal[0])
		maxVal[0] = nums[2]
	maxVal[1] = maxVal[0]
	maxVal[2] = maxVal[0]
	end
	return maxVal
end
print check_array([1, 2, 5]),"\n"
print check_array([1, 2, 3]),"\n"
print check_array([1, 2, 4])

# 14. Write a Ruby program to compute the sum of the first 2 elements of a given array of integers. If the array length is less than 2, just sum up the elements that exist, returning 0 if the length of the array is 0.

def check_array(nums)
    if(nums.length >= 2)
		return (nums[0] + nums[1])
	end
	if(nums.length == 1)
		return nums[0];
	end
	return 0;

end
print check_array([1, 2, 5]),"\n"
print check_array([4, 2, 3]),"\n"
print check_array([1])

# 15. Write a Ruby program to create an array of length 2 containing their middle elements from two given arrays of integers of length 3.

def check_array(nums)
    if(nums.length >= 2)
		return (nums[0] + nums[1])
	end
	if(nums.length == 1)
		return nums[0];
	end
	return 0;

end
print check_array([1, 2, 5]),"\n"
print check_array([4, 2, 3]),"\n"
print check_array([1])

# 16. Write a Ruby program to concatenate array of arrays into one.

fnums = [ 10, 20, [30, [40, 50] ] ]
nums = fnums.flatten
print "\nFlatten array:\n"
print nums

# flatten returns a new array that is a one-dimensional flattening of this array (recursively). That is, for every element that is an array, extract its elements into the new array.

# 17. Write a Ruby program to check whether a given array of integers of length 2 contains a 4 or a 7.

def check_array(nums)
    if(nums[0] == 4 || nums[0] == 7)
		return true
	end
	return (nums[1] == 4 || nums[1] == 7)
end

print check_array([1, 4]),"\n"
print check_array([7, 5]),"\n"
print check_array([5, 2])

# 18. Write a Ruby program to check whether a given array of integers of length 2 does not contain a 6 or a 9.

def check_array(nums)
    if(nums[0] == 6 || nums[0] == 9)
         return false
     end
     return !(nums[1] == 6 || nums[1] == 9)
 end

 print check_array([1, 4]),"\n"
 print check_array([6, 5]),"\n"
 print check_array([5, 9])

# 19. Write a Ruby program to check whether a given array of integers contains 3 twice, or 5 twice. The array will be length 0, 1, or 2.

def check_array(nums)
    if(nums.length == 2)
        if(nums[0] == 3 && nums[1] == 3)
            return true
        else
		return (nums[0] == 5 && nums[1] == 5)
		end
	return false
	end
end

print check_array([3, 3]),"\n"
print check_array([3, 6]),"\n"
print check_array([5, 9]),"\n"
print check_array([5, 5]),"\n"
print check_array([8, 9])

# 20. Write a Ruby program to set 5 to 1 if there is a 3 immediately followed by a 5 in a given array of integers (length 3).

def check_array(nums)
    num1 = nums[0], nums[1], nums[2]
   if(nums[0] == 3 && nums[1] == 5)
           num1[1] = 1;
   end
   if(nums[1] == 3 && nums[2] == 5)
           num1[2] = 1;
   end
   return num1;
end
print check_array([1, 3, 5]),"\n"
print check_array([3, 5, 6]),"\n"
print check_array([3, 9, 5])

# 21. Write a Ruby program to compute the sum of two arrays (length 3) and return the array which has the largest sum.

def check_array(a, b)
    sum = (a[0]+a[1]+a[2])-(b[0]+b[1]+b[2])
	if(sum >= 0)
		return a
	end
	return b
end
print check_array([1, 3, 5], [2, 4, 4]),"\n"
print check_array([11, 3, 5], [21, 0, -4]),"\n"

# 22. Write a Ruby program to create a new array of length 2 containing the middle two elements from a given array of integers of even length 2 or more.

def check_array(nums)
    midArr = []
   	half = nums.length/2;
	midArr[0] = nums[half-1];
	midArr[1] = nums[half];
	return midArr;
end
print check_array([1, 3, 5, 4]),"\n"
print check_array([11, 3, 5, 21, 0, -4])

# 23. Write a Ruby program to create a new array of length 4 containing all their elements from two array of integers, length 2.

def check_array(a, b)
    arr1 = a[0], a[1], b[0], b[1]
    return arr1;
 end
 print check_array([1, 3], [5, 4]),"\n"
 print check_array([11, 3], [5, 21])

 # 24. Write a Ruby program to swap the first and last elements of a given array of integers, length will be at least 1. Return the modified array.

 def check_array(nums)
    temp = nums[0];
	nums[0] = nums[nums.length-1];
	nums[nums.length-1] = temp;
	return nums;
end
print check_array([1]),"\n"
print check_array([1, 3]),"\n"
print check_array([1, 3, 5]),"\n"
print check_array([11, 3, 5, 21])

# 25. Write a Ruby program to create a new array of length 3 containing the elements from the middle of a given array of integers of odd length (at least 3).

def check_array(nums)
    halfArr = [];
	half = nums.length/2;
	halfArr[0] = nums[half-1];
	halfArr[1] = nums[half];
	halfArr[2] = nums[half+1];
	return halfArr;
end

print check_array([1, 3, 4]),"\n"
print check_array([1, 2, 3, 7, 9])

# 26. Write a Ruby program to find the largest value from a given array of integers of odd length. The array length will be a least 1.

def check_array(nums)
    max = nums[0];
	if(max <= nums[nums.length-1])
		max = nums[nums.length-1]
	end
	if(max <= nums[nums.length/2])
		max = nums[nums.length/2]
	end
	return max;
end

print check_array([1, 3, 4]),"\n"
print check_array([1, 2, 7]),"\n"
print check_array([1, 2])

# 27. Write a Ruby program to create a new array using first three elements of a given array of integers. If the length of the given array is less than three return the original array.

def check_array(nums)
    front = []
	if nums.length >= 3
		front[0] = nums[0]
		front[1] = nums[1]
		front[2] = nums[2]
	elsif nums.length == 2
		front[0] = nums[0]
		front[1] = nums[1]
	else nums.length == 1
	    front[0] = nums[0]
	end
	return front
end

print check_array([1, 3, 4, 5]),"\n"
print check_array([1, 2, 3]),"\n"
print check_array([1,2]),"\n"
print check_array([1]),"\n"

# 28. Write a Ruby program to create a new array with the first element of two arrays. If length of any array is 0, ignore that array.

def check_array(a, b)
    front = []
    if(a.length > 0 && b.length > 0)
        front[0] = a[0]
		front[1] = b[0]
    elsif (a.length > 0)
        front[0] = a[0]
    elsif (b.length > 0)
        front[0] = b[0]
    end
    return front
end

print check_array([3, 4, 5, 6], [7, 3, 4]),"\n"
print check_array([3, 4, 5], [6, 7, 3, 4, 7]),"\n"
print check_array([3, 4], [])

# 29. Write a Ruby program to get the number of even integers in a given array.

def check_array(nums)
    count = 0
    nums.each do |item|
      if((item % 2) == 0)
      count=count + 1
      end
    end
    return count
  end
  print check_array([3, 4, 5, 6]),"\n"
  print check_array([3, 4, 5]),"\n"
  print check_array([3, 4])

  # 30. Write a Ruby program to find the difference between the largest and smallest values of a given array of integers and length 1 or more.

  def check_array(nums)
    max = nums[0];
    min = nums[0];
    nums.each do |item|
      if(item > max)
              max = item;
          elsif(item < min)
              min = item
      end
     end
    return (max-min)
  end

  print check_array([3, 4, 5, 6]),"\n"
  print check_array([3, 4, 5]),"\n"
  print check_array([3, 4])

  # 31. Write a Ruby program to compute the average values of a given array of except the largest and smallest values. The array length must be 3 or more.

  def check_array(nums)
    min = nums[0]
    max = nums[0]
    sum = 0
    nums.each do |item|
      sum = sum + item
          if(item > max)
              max = item
          elsif(item < min)
              min = item
          end
     end
     return (sum-max-min).to_f/(nums.length - 2)
  end

  print check_array([3, 4, 5, 6]),"\n"
  print check_array([12, 3, 7, 6]),"\n"
  print check_array([2, 15, 7, 2]),"\n"
  print check_array([2, 15, 7])

  # 32. Write a Ruby program to compute the sum of the numbers of a given array except the number 17 and numbers that come immediately after a 17. Return 0 for an empty array.

  def check_array(nums)
    sum = 0
    i = 0
    while i < nums.length
            if(nums[i] == 17)
             i= i + 1
         else
                sum = sum + nums[i]
         end
         i += 1
     end
        return sum
 end
 print check_array([3, 5, 17, 6]),"\n"
 print check_array([3, 5, 1, 17]),"\n"
 print check_array([3, 17, 1, 7]),"\n"

 # 33. Write a Ruby program to check whether the sum of all the 3's of a given array of integers is exactly 9.

 def check_array(nums)
    sum = 0
    i = 0
    while i < nums.length
        if(nums[i] == 3)
             sum += 3
        end
     i += 1
        end
    return (sum == 9);
 end
 print check_array([3, 5, 3, 3]),"\n"
 print check_array([3, 3, 2, 1]),"\n"
 print check_array([3, 3, 3, 3]),"\n"

 # 34. Write a Ruby program to check whether the number of 2's is greater than the number of 5's of a given array of integers.

 def check_array(nums)
    ctr = 0
    i = 0
    while i < nums.length
         if (nums[i] == 2)
             ctr = ctr + 1
         elsif (nums[i] == 5)
             ctr= ctr - 1
         end
        i += 1
    end
    return (ctr > 0)
 end
 print check_array([3, 5, 3, 3]),"\n"
 print check_array([2, 3, 2, 5]),"\n"
 print check_array([2, 2, 5, 5]),"\n"

 # 35. Write a Ruby program to check whether every element is a 3 or a 5 in a given array of integers.

 def check_array(nums)
    i = 0
    while i < nums.length
         if(nums[i] != 3 && nums[i] != 5)
             return false
         end
     i = i + 1
    end
    return true
 end
 print check_array([3, 5, 3, 3]),"\n"
 print check_array([2, 3, 2, 5]),"\n"
 print check_array([3, 5, 5, 5]),"\n"

 # 36. Write a Ruby program to check whether it contains no 3 or it contains no 5.

 def check_array(nums)
    noThree = true, noFive = true;
    i = 0;
    while i < nums.length && (noThree || noFive)
         if(nums[i] == 3)
             noThree = false
         elsif(nums[i] == 5)
             noFive = false
         end
     i = i + 1
    end
    return (noThree || noFive)
 end
 print check_array([3, 7, 3, 3]),"\n"
 print check_array([2, 8, 2, 9]),"\n"
 print check_array([3, 8, 5, 9]),"\n"

 # 37. Write a Ruby program to check whether a given value appears everywhere in a given array. A value is "everywhere" in an array if it presents for every pair of adjacent elements in the array.

 def check_array(nums)
    i = 0;
    val = 3
    while i < nums.length
        if(nums[i] != val && nums[i+1] != val)
             return false
         end
     i = i + 1
    end
    return true
 end
 print check_array([3, 7, 3, 3]),"\n"
 print check_array([2, 8, 2, 9]),"\n"
 print check_array([3, 8, 5, 4, 3, 7]),"\n"

 # 38. Write a Ruby program to check whether a given array contains a 3 next to a 3 or a 5 next to a 5, but not both.

 def check_array(nums)
    no3pair = 1
    no5pair = 1
    i = 0;
    while i < nums.length && (no3pair + no5pair != 0)
         if(nums[i] == 3 && nums[i+1] == 3)
             no3pair = 0
         elsif(nums[i] == 5 && nums[i+1] == 5)
             no5pair = 0
         end
     i = i + 1
    end
    return ((no3pair ^ no5pair) == 1) # ^XOR operator ->true se uma das condições for true. Se os dois forem true, vai retornar false.
 end
 print check_array([3, 3, 7, 5]),"\n"
 print check_array([3, 8, 5, 9]),"\n"
 print check_array([3, 7, 5, 5]),"\n"

 # 39. Write a Ruby program to check whether a given array of integers contains two 6's next to each other, or there are two 6's separated by one element, such as {6, 2, 6}.

 def check_array(nums)
    i = 0;
    while i < nums.length
         if(nums[i] == 6)
             if(nums[i+1] == 6)
                 return true
             elsif(i < nums.length - 2 && nums[i+2] == 6)
                 return true
             end
         end
     i = i + 1
    end
    return false
 end
 print check_array([6, 3, 6, 5]),"\n"
 print check_array([6, 6, 5, 9]),"\n"
 print check_array([6, 4, 5, 6]),"\n"

 # 40. Write a Ruby program to check whether there is a 2 in the array with a 3 somewhere later in a given array of integers.

 def check_array(nums)
    found1 = false
    i = 0
    while i < nums.length
        if(nums[i] == 2)
             found1 = true
         end
         if(found1 && nums[i] == 3)
             return true
         end
         i = i + 1
    end
    return false
 end
 print check_array([6, 2, 3, 5]),"\n"
 print check_array([2, 6, 5, 3]),"\n"
 print check_array([6, 2, 5, 3]),"\n"
 print check_array([3, 6, 5, 2]),"\n"
 print check_array([3, 3, 2, 1]),"\n"

 # 41. Write a Ruby program to check whether the value 2 appears in a given array of integers exactly 2 times, and no 2's are next to each other.

 def check_array(nums)
    count = 0
    i = 0
    if(nums.length >= 1 && nums[0] == 2)
        count = count + 1
    end
   while i < nums.length
        if(nums[i - 1] == 2 && nums[i] == 2)
            return false
        end
        if(nums[i] == 2)
            count = count + 1
        end
        i= i + 1
   end
   return count == 3
end
print check_array([2, 1, 2, 5, 6]),"\n"
print check_array([2, 6, 5, 2, 3]),"\n"
print check_array([2, 5, 2, 3, 2]),"\n"

# 42. Write a Ruby program to convert an array into an index hash.

nums = [10, 20, 30, 40]
print Hash[nums.zip]

# 43. Write a Ruby program to find most occurred item in a given array

nums = [10, 20, 30, 40, 10, 10, 20]
nums_freq = nums.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
print "\nFrequency of numbers:\n"
print nums_freq

# 44. Write a Ruby program to check whether all items are identical in a given array.

num1 = [10, 20, 30, 40, 10, 10, 20]

print "\nIs all items are identical?\n"
print num1.all? {|x| x == num1[0]}
num2 = [10, 10, 10]
print "\nOriginal array:\n"
print num2
print "\nIs all items are identical?\n"
print num2.all? {|x| x == num2[0]}

# 45. Write a Ruby program to search items start with specified string of a given array.

arra1 = ['abcde', 'abdf', 'adeab', 'abdgse', 'bdefa', 'bacdef']
print "Original array:\n"
print arra1
print "\nSearch items start with 'ab':\n"
print arra1.grep(/^ab/)
print "\nSearch items start with 'b':\n"
print arra1.grep(/^b/)

# 46. Write a Ruby program to iterate an array starting from the last element.

nums = [10, 20, 30, 40, 10, 10, 20]
print "Original array:\n"
print nums
print "\nReverse array:\n"
nums.reverse.each { |x| puts x }

# 47. Write a Ruby program to iterate over the first n elements of a given array.

arra1 = ['abcde', 'abdf', 'adeab', 'abdgse', 'bdefa', 'bacdef']
print "Original array:\n"
print arra1
arra2 = arra1.first(3)
print "\nFirst 3 elements:\n"
print arra2

# 48. Write a Ruby program to sort a given array of strings by length.

arra1 = ['abcde', 'abdf', 'adeab', 'abdgeee', 'bdefa', 'abc', 'ab', 'a', 'bacdef']
print "Original array:\n"
print arra1
print "\nSorted array of strings by length\n"
arra1 = arra1.sort_by(&:length)
print arra1