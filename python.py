print()	# It is used to display anything on the console.
len()	# It is used to find the length of a string, list, tuple, dictionary, etc.
min()	# It is used to find the minimum value out of multiple values.
max()	# It is used to find the maximum value out of multiple values.
type()	# It tells about the data type of a variable.
isinstance()	# It confirms if a variable is of xyz type. For example, if 5 is int? This function returns True if yes.
z = int("3") # z will be 3 (casting)


# lists
listExample = ["Tulip", "Jasmine", "Rose", "Lili", "Daisy"]
listExample2 = list("hello") # will create array ['h','e','l','l','o']

listExample.append("orange") # adds to end of list
listExample.insert(1, "orange") #insert in index
listExample.pop(1)
listExample.pop()
del listExample[0] # remove specific index
listExample.remove("Tulip") # remove specific value from the array
print(listExample[-1]) #accessing last item
print(listExample[2:5]) #range, note that it does not include 5
print(listExample[2:len(listExample)]) #range from 2 to last item
listExample.sort() #sort list
listExample = listExample + listExample2 # combine lists
listExample.reverse() #reverse list
listExample.index("Jasmine") # findining at what index we have a value, returns 1


# sets
setExample = set() # empty set
setExample = {"apple", "banana", "cherry"}
setExample.add("orange")
setExample.remove("banana")

#tuple
tupleExample = ("one", "two", "three") # can be accessed like arrays, but cannot be modified

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
a = "Hello, World!"
b = f"{a} fstring"
print(a[1]) #string is Array
len(a) #size, length
# some string methods:
a.isalpha()
a.isdigit()
a.isnumeric()
a.islower()
a.isupper()

a.upper()
a.lower()
a.replace("this","with that")
a.startswith()
a.splitlines()
a.split()
a.strip() # trim spaces
";".join(a)

# Parse JSON
import json
x =  '{ "name":"John", "age":30, "city":"New York"}'
y = json.loads(x)

# Copy
import copy
copy.copy(y) #Return a shallow copy of x onject.
copy.deepcopy(y) # Return a deep copy x object

#read file
f = open("demofile.txt", "r")
print(f.read())

#write file
f = open("demofile3.txt", "w")
f.write("Woops! I have deleted the content!")
f.close()
f = open("demofile2.txt", "a")
f.write("Now the file has more content!")
f.close()

# loops
while True:
    break #b reak
    continue # continue

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
for n in range(0,9):
    print(n)


# Math
import math
math.floor(x) # floor
x ** 3 #x^3
7 // 2 # floor divide, returns 3
-x # changed sign of x
4 % 3 # modulo, returns 1

#List Comprehension
list = [expression_on_variable_name for variable_name in iterable if some_condition_on_variable_name]
list = [c.lower() for c in "ABC" if c != 'A'] # will return ['b', 'c']
squares = [i**2 for i in range(5)] # will return [0, 1, 4, 9, 16]