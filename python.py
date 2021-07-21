import re
import math
import copy
import json
print()  # It is used to display anything on the console.
# It is used to find the length of a string, list, tuple, dictionary, etc.
len()
min()  # It is used to find the minimum value out of multiple values.
max()  # It is used to find the maximum value out of multiple values.
type()  # It tells about the data type of a variable.
# It confirms if a variable is of xyz type. For example, if 5 is int? This function returns True if yes.
isinstance()
z = int("3")  # z will be 3 (casting)


# lists
listExample = ["Tulip", "Jasmine", "Rose", "Lili", "Daisy"]
listExample2 = list("hello")  # will create array ['h','e','l','l','o']

listExample.append("orange")  # adds to end of list
listExample.insert(1, "orange")  # insert in index
listExample.pop(1)
listExample.pop()
del listExample[0]  # remove specific index
listExample.remove("Tulip")  # remove specific value from the array
print(listExample[-1])  # accessing last item
print(listExample[2:5])  # range, note that it does not include 5
print(listExample[2:len(listExample)])  # range from 2 to last item
listExample.sort()  # sort list
listExample = listExample + listExample2  # combine lists
listExample.reverse()  # reverse list
# findining at what index we have a value, returns 1
listExample.index("Jasmine")

# pythonic way to check if a list is empty or not
# check if list is not  empty
if listExample:
    pass

# check if list is empty
if not listExample:
    pass

# sets
setExample = set()  # empty set
setExample = {"apple", "banana", "cherry"}
setExample.add("orange")
setExample.remove("banana")

# tuple
# can be accessed like arrays, but cannot be modified
tupleExample = ("one", "two", "three")

# dict
dictionaryExample = {
    "key1": "value1",
    "key2": "value2",
    "key3": "value3",
    "key4": "value4",
}

# if x exists dataset
"banana" in setExample
"Tulip" in listExample

# Strings
a = "Hello, World!\nLine2"
b = f"{a} fstring"
print(a[1])  # string is Array
len(a)  # size, length

# True/False methods:
a.isalpha()
a.isdigit()
a.isnumeric()
a.islower()
a.isupper()
a.startswith("Hell")  # will return True

a.upper()  # change all letters to uppercase
a.lower()  # change all letters to lowercase

a.replace("Hello", "Bye")  # will return: 'Bye, World!\nLine2'

a.split(",")  # will split into array: ['Hello', ' World!\nLine2']
a.splitlines()  # will split into array: ['Hello, World!', 'Line2']
a.strip()  # trim spaces
# finds the first occurrence of the specified value. Will return 7 in this case
a.find("World")
";".join(a)

# Parse JSON
# requires import math
x = '{ "name":"John", "age":30, "city":"New York"}'
y = json.loads(x)

# Copy
# requires import copy
copy.copy(y)  # Return a shallow copy of x onject.
copy.deepcopy(y)  # Return a deep copy x object

# read file
f = open("demofile.txt", "r")
print(f.read())

# write file
f = open("demofile3.txt", "w")
f.write("Woops! I have deleted the content!")
f.close()
f = open("demofile2.txt", "a")
f.write("Now the file has more content!")
f.close()

# loops
while True:
    break  # b reak
    continue  # continue

# while loop
i = 0
while i < 6:
    print(i)
    i += 1

# loop over string
for x in "banana":
    print(x)

# loop over list with Index
for index, val in enumerate(listExample):
    print(index, val)

# loop over dict
for key, value in dictionaryExample.items():
    print(key)
    print(value)

# loop over range (0-9):
for n in range(0, 9):
    print(n)


# Math
# requires import math
math.floor(x)  # floor
x ** 3  # x^3
7 // 2  # floor divide, returns 3
-x  # changed sign of x
4 % 3  # modulo, returns 1

# List Comprehension
list = [expression_on_variable_name for variable_name in iterable if some_condition_on_variable_name]
list = [c.lower() for c in "ABC" if c != 'A']  # will return ['b', 'c']
squares = [i**2 for i in range(5)]  # will return [0, 1, 4, 9, 16]


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
