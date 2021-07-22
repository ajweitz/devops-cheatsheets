#########
# IMPORTS
#########
import re
import math
import copy
import json


#########
# GENERAL
#########
print()  # It is used to display anything on the console.
# It is used to find the length of a string, list, tuple, dictionary, etc.
len()
type()  # It tells about the data type of a variable.
# It confirms if a variable is of xyz type. For example, if 5 is int? This function returns True if yes.
isinstance()
z = int("3")  # cast string into integer


#######
# LISTS
#######
arr = ["Tulip", "Jasmine", "Rose", "Lili", "Daisy"]
arr2 = list("hello")  # will create array ['h','e','l','l','o']
len(arr)  # array length
arr.append("orange")  # adds to end of list
arr.insert(1, "orange")  # insert in index
arr.pop(1)
arr.pop()
del arr[0]  # remove specific index
arr.remove("Tulip")  # remove specific value from the array
print(arr[-1])  # accessing last item
print(arr[2:5])  # range, note that it does not include 5
print(arr[2:len(arr)])  # range from 2 to last item
arr.sort()  # sort list
arr = arr + arr2  # combine lists
arr.reverse()  # reverse list
# findining at what index we have a value, returns 1
arr.index("Jasmine")

"Tulip" in arr  # if
# pythonic way to check if a list is empty or not
# check if list is not  empty
if arr:
    pass

# check if list is empty
if not arr:
    pass

# List Comprehension
arr = [expression_on_variable_name for variable_name in iterable if some_condition_on_variable_name]
arr = [c.lower() for c in "ABC" if c != 'A']  # will return ['b', 'c']
squares = [i**2 for i in range(5)]  # will return [0, 1, 4, 9, 16]


#######
# SETS
#######
setExample = set()  # empty set
setExample = {"apple", "banana", "cherry"}
setExample.add("orange")
setExample.remove("banana")
"banana" in setExample  # returns True if banana exists setExample


#######
# TUPLES
#######
# can be accessed like arrays, but cannot be modified
tupleExample = ("one", "two", "three")


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


############
# STRINGS
############
str = "Hello, World!\nLine2"
str2 = f"{str} fstring"
print(str[1])  # string is Array
len(str)  # size, length

# True/False methods:
str.isalpha()
str.isdigit()
str.isnumeric()
str.islower()
str.isupper()
str.startswith("Hell")  # will return True

str.upper()  # change all letters to uppercase
str.lower()  # change all letters to lowercase

str.replace("Hello", "Bye")  # will return: 'Bye, World!\nLine2'

str.split(",")  # will split into array: ['Hello', ' World!\nLine2']
str.splitlines()  # will split into array: ['Hello, World!', 'Line2']
str.strip()  # trim spaces
# finds the first occurrence of the specified value. Will return 7 in this case
str.find("World")
";".join(a)


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
# requires import json
str = '{ "name":"John", "age":30, "city":"New York"}'
pythonObject = json.loads(str)


######
# COPY
######
# requires import copy
copy.copy(pythonObject)  # Return a shallow copy of x onject.
copy.deepcopy(pythonObject)  # Return a deep copy x object


########
# Loops
########
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
# requires import math
math.floor(2.3)  # floor
math.ceil(1.4) # ceil
x ** 3  # x^3
7 // 2  # floor divide, returns 3
-x  # changed sign of x
4 % 3  # modulo, returns 1
min()  # It is used to find the minimum value out of multiple values.
max()  # It is used to find the maximum value out of multiple values.

########
# REGEXP
########
# regexp (regular expression)
# requires import re

# use r for python RAW string when you want to escape \ in regexp
p = re.compile(r"\\")
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