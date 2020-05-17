# CREATING ARRAYS

person = []
person[1] = 'Natália'
person[2] = 'Kikuchi'

person.length #=>2
person.empty? #=> false

fruits = ["Banana", "Orange", "Apple", "Mango"];
fruits[-3] # "Orange"

#recommended in cases when you need to instantiate arrays with natively immutable objects such as Symbols, numbers, true or false.
Array.new(3, 'oi') #=> ['oi', 'oi', 'oi']

# This method is safe to use with mutable objects such as hashes, strings or other arrays:
Array.new(4) { Hash.new } #=> [{}, {}, {}, {}]

# An array can also be created by using the Array() method, provided by Kernel, which tries to call to_ary, then to_a on its argument.
Array({:a => "a", :b => "b"}) #=> [[:a, "a"], [:b, "b"]]

#ACCESSING ELEMENTS
arr = [1, 2, 3, 4, 5, 6]
arr[2]    #=> 3
arr[100]  #=> nil
arr[-3]   #=> 4
arr[2, 3] #=> [3, 4, 5]
arr[1..4] #=> [2, 3, 4, 5]

arr.at(0) #=> 1
arr.at(2) #=> 3

desserts = ['Ice cream', 'cake', 'mousse', 'pie']
desserts[0] + " and " + desserts[3] #=> "Ice cream and pie"

desserts[19] #=>nil

desserts[0..2] #=>["Icre cream", "cake", "mousse"]

# THE SLICE METHOD - Deletes the element(s) given by an index (optionally up to length elements) or by a range. Returns the deleted object (or objects), or nil if the index is out of range.

a = [ "a", "b", "c" ]
a.slice!(1)     #=> "b"
a               #=> ["a", "c"]
a.slice!(-1)    #=> "c"
a               #=> ["a"]
a.slice!(100)   #=> nil
a               #=> ["a"]

# THE SORT METHOD - Returns a new array created by sorting self.Comparisons for the sort will be done using the <=> operator or using an optional code block. The block must implement a comparison between a and b, and return -1, when a follows b, 0 when a and b are equivalent, or +1 if b follows a.

a = [ "d", "a", "e", "c", "b" ]
a.sort                    #=> ["a", "b", "c", "d", "e"]
a.sort { |x,y| y <=> x }  #=> ["e", "d", "c", "b", "a"]

# THE SHIFT METHOD - Removes the first element of self and returns it (shifting all other elements down by one). Returns nil if the array is empty.

colors = ['blue', 'green', 'pink','purple']
colors.shift #=> 'blue'
colors.shift(2) #=> ['green', 'pink']

# THE UNSHIFT METHOD - Prepends objects to the front of self, moving other elements upwards. See also #shift for the opposite effect.

a = [ "b", "c", "d" ]
a.unshift("a")   #=> ["a", "b", "c", "d"]
a.unshift(1, 2)  #=> [ 1, 2, "a", "b", "c", "d"]

# ITERATING OVER ARRAYS USING EACH METHOD
# Defines what elements should be iterated over and how. In case of Array's each, all elements in the Array instance are yielded to the supplied block in sequence.

teas = ['jasmine', 'mint', 'green tea', 'chai']
teas.each { |favorite_tea| print favorite_tea += ' lover ' }

arr = [1, 2, 3, 4, 5]
arr.each { |a| print a -= 10, " " }
# prints: -9 -8 -7 -6 -5
#=> [1, 2, 3, 4, 5]