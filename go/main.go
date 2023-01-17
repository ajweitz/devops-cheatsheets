
// Definition of main function
package main

import (
	"fmt"
)

func main() {
	// Code goes here
	fmt.Println("Hello World!")
}

/////////
// ARRAYS
/////////
listExample := make([]string, 0) // creating an Array
len(listExample) // return length of Array
listExample = append(listExample, "Orange") // Append to an array
sort.Strings(listExample) // Sort Array


///////
// MAPS
///////
dictionaryExample := make(map[string]string) // Creating a map/dict
dictionaryExample["key1"] = "value1" // Assigning a value
// Check if key is in dictionary
if _, ok := dictionaryExample["key1"]; ok {
	fmt.Println("Key is present in dictionary")
}
// Iterate over a dictionary
for key, value := range dictionaryExample {
	fmt.Printf("Key: %s Value: %s\n", key, value)
}

////////
// LOOPS
////////
// For loop
for i := 0; i < 5; i++ {
	fmt.Println(i)
}
// While loop
j := 0
for j < 5 {
	fmt.Println(j)
	j++
}
// Iterate over a list
listExample := []string{"Tulip", "Jasmine", "Rose", "Lili", "Daisy"}
for index, element := range listExample {
	fmt.Println(element)
}