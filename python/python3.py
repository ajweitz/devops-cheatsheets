#########
# IMPORTS
#########
import collections # import a library
od = collections.OrderedDict() # Create an OrderedDict object

from collections import OrderedDict # import a class from the library
od = OrderedDict() # Create an OrderedDict object

from collections import OrderedDict as odict # import a class from the library, and give it an alias
od = odict() # Create an OrderedDict object


#########
# GENERAL
#########
print()  # display anything on the console.
len() # find the length of a string, list, tuple, dictionary, etc.
type()  # It tells about the data type of a variable.
isinstance() # It confirms if a variable is of xyz type. For example, if 5 is int? This function returns True if yes.
z = int("3")  # cast string into integer


#######
# LISTS
#######
# Lists can be also used as a stack, with append and pop methods.
# For queues, go to the QUEUE section.
arr = ["Tulip", "Jasmine", "Rose", "Lili", "Daisy"]
arr2 = list("hello")  # will create array ['h','e','l','l','o']
len(arr)  # array length
arr.append("orange")  # adds to end of list
arr.insert(1, "orange")  # insert in index
arr.pop(1) # pop a value on given index. Will return "Jasmine" and remove her from the list
arr.pop() # pop right most item. Will return "Daisy" and remove her from list
del arr[0]  # remove specific index
arr.remove("Tulip")  # remove specific value from the array
arr[-1] # accessing last item
arr[1:4]  # range, will return ['Jasmine', 'Rose', 'Lili']
arr[2:] # range from 2 to last item. Will return ['Jasmine', 'Rose', 'Lili', 'Daisy']
arr.sort()  # sort list
arr = arr + arr2  # combine lists
arr.reverse()  # reverse list
arr.index("Jasmine") # findining at what index we have a value, returns 1

"Tulip" in arr  # if
# pythonic way to check if a list is empty or not
# check if list is not  empty (same as if len(arr) != 0)
if arr:
    pass

# check if list is empty (same as if len(arr) == 0)
if not arr:
    pass

# List Comprehension, quick way to a list/dict out of a list/dict based on a condition
arr = [expression_on_variable_name for variable_name in iterable if some_condition_on_variable_name]
arr = [c.lower() for c in "ABC" if c != 'A']  # will return ['b', 'c']
squares = [i**2 for i in range(5)]  # will return [0, 1, 4, 9, 16]


############
# DICTIONARY
############
# aka hashtable aka map
dictionaryExample = {
    "key1": "value1",
    "key2": "value2",
    "key3": "value3",
    "key4": "value4",
}
dictionaryExample["key"] = "value"  # set a key to value
"key" in dictionaryExample  # returns True if key is in the dictionary


#######
# QUEUE
#######
# deque operate as both queue and stack, depending on the function you use to "pop"
from collections import deque
dq = deque() # create an empty deque
dq = deque(["a",2,"c"]) # create a deque with elements
dq.append("d") # add element to the queue
dq.popleft() # pop element from the queue (this will pop "a")
dq.pop() # pop element from right (if you wanna use dq as a stack)
 

#####
# SET
#####
# Set is like a dictionary but without keys, useful if you wanna keep a list of elements without duplicates
setExample = set()  # empty set
setExample = {"apple", "banana", "cherry"}
setExample.add("orange")
setExample.remove("banana")
"banana" in setExample  # returns True if banana exists setExample


#######
# TUPLE
#######
# can be accessed like arrays, but cannot be modified
tupleExample = ("one", "two", "three")


########
# STRING
########
str = "Hello, World!\nLine2"
str2 = f"{str} fstring"
print(str[1])  # string is Array
len(str)  # size, length

# True/False methods:
str.isalpha() # returns True if all characters are A-z
str.isdigit() # returns True if all characters are [0-9]
str.isnumeric() # returns True if all characters are [0-9] OR Chinese/Arabic numerals
str.islower() # returns True if all characters lowercase
str.isupper() # returns True if all characters uppercase
str.startswith("Hell")  # returns True if starts with given string

str.upper()  # change all letters to uppercase
str.lower()  # change all letters to lowercase

str.replace("Hello", "Bye")  # will return: 'Bye, World!\nLine2'
";".join(["a","b","c"]) # join, returns "a;b;c"
str.split(",")  # will split into array: ['Hello', ' World!\nLine2']
str.splitlines()  # will split into array: ['Hello, World!', 'Line2']
str.strip()  # trim spaces (remove whitespaces from the start and end of a string)
str.find("World") # finds the first occurrence of the specified value. Will return 7 in this case


#######
# FILES
#######
# read file
f = open("demofile.txt", "r")
str = f.read()  # read content of file into str
f.close()  # close file

# write file
f = open("demofile3.txt", "w")  # Write (overwrite)
f.write("Woops! I have deleted the content!")
f.close()
f = open("demofile2.txt", "a")  # Write (append)
f.write("Now the file has more content!")
f.close()


######
# JSON
######
import json
str = '{ "name":"John", "age":30, "city":"New York"}'
pythonObject = json.loads(str) # create an object out of a JSON string


######
# COPY
######
import copy
copy.copy(pythonObject)  # Return a shallow copy of x onject.
copy.deepcopy(pythonObject)  # Return a deep copy x object


#######
# LOOPS
#######
# while loop
i = 0
while i < 6:
    print(i)
    i += 1
    break  # break
    continue  # continue

# loop over string
for x in "banana":
    print(x)

# loop over list with Index
for index, val in enumerate(arr):
    print(index, val)

# loop over dict
for key, value in dictionaryExample.items():
    print(key)
    print(value)

# loop over range (0-9):
for n in range(0, 9):
    print(n)


######
# MATH
######
# built-in arithmetics
x ** 3  # x^3
7 // 2  # floor divide, returns 3
-x  # changed sign of x
4 % 3  # modulo, returns 1
min()  # find the minimum value out of multiple values.
max()  # find the maximum value out of multiple values.

# Math Lib functions
import math
math.floor(2.3)  # floor
math.ceil(1.4) # ceil
3 < math.inf # inifity
-2 > -math.inf # negative infinity


########
# REGEXP
########
# regexp (regular expression)

import re
p = re.compile(r"\\") # use r for python RAW string when you want to escape \ in regexp
p = re.compile('[a-z]+')  # first we need to compile our regexp
m = p.match("adasd+blabla")  # match the string with the expression we compiled

m.group()  # returns the matching expression. In this case will return adasd
m.start()  # returns the starting position of the match. In this case will return 0

# search in the string for the matching regexcp. The difference with match, that match will return None if it's not entirely matching
p.search("325abcd")

"[a-c]"  # letters abc
"[abc9]"  # letters abc and number 9
"[0-9]"  # digits from 0 to 9
"\s"  # matches any whitespace
"\S"  # matches any Non whitespace
"\w"  # matches any alphanumeric
"\W"  # matches any Non alphanumeric

"."  # matches any character
"{m}"  # match expression m times
"{m,n}"  # match expression a minimum of m and a maximum of n times
"*"  # match expression 0 or more times
"+"  # match expression 1 or more times
