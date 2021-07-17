print()	# It is used to display anything on the console.
len()	# It is used to find the length of a string, list, tuple, dictionary, etc.
min()	# It is used to find the minimum value out of multiple values.
max()	# It is used to find the maximum value out of multiple values.
type()	# It tells about the data type of a variable.
isinstance()	# It confirms if a variable is of xyz type. For example, if 5 is int? This function returns True if yes.
z = int("3") # z will be 3 (casting)


# lists
listExample = ["Tulip", "Jasmine", "Rose", "Lili", "Daisy"]
listExample.append("orange") # adds to end of list
listExample.insert(1, "orange") #insert in index
listExample.pop(1)
listExample.pop()
del listExample[0] # remove specific index
print(listExample[-1]) #accessing last item
print(listExample[2:5]) #range
listExample.sort() #sort list
listExample = listExample + listExample2 # combine lists
listExample.reverse() #reverse list
listExample.index("Jasmine") # findining at what index we have a value, returns 1


# sets
setExample = {"apple", "banana", "cherry"}
setExample.add("orange")
setExample.remove("banana")

#tuple
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
a = "Hello, World!"
b = f"{a} fstring"
print(a[1]) #string is Array
len(a) #size, length
# some string methods:
isalpha()
isdigit()
isnumeric()
islower()
isupper()

upper()
lower()
a.replace("this","with that")
startswith()
splitlines()
split()
strip() # trim spaces
";".join(a)

# Copy
import copy
copy.copy(x) #Return a shallow copy of x.
copy.deepcopy(x) # Return a deep copy

# Parse JSON
import json
x =  '{ "name":"John", "age":30, "city":"New York"}'
y = json.loads(x)

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
break
continue

# while loop
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