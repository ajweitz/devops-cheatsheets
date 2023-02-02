// Definition of main function
package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code goes here
	fmt.Println("Hello World!")

	/////////
	// SLICES
	/////////
	// Slices are dynamic Arrays in go
	//creating a slice
	sliceExample := make([]string, 0)
	sliceExample = make([]string, 0, 50) // Creating a slice with a capacity of 50 - in case we know in advance we are going to need that much
	anotherSliceExample := []int{2, 3, 5, 7, 11, 13}
	len(sliceExample)                             // return length of a slice
	subSlice := anotherSliceExample[0:2]          // get a subslice {2,3}
	subSlice = anotherSliceExample[:2]            // same as the above
	subSlice = anotherSliceExample[4:]            // get a subslice {11,13}
	sliceExample = append(sliceExample, "Orange") // Append to a Slice
	sort.Strings(sliceExample)                    // Sort Slice

	///////
	// MAPS
	///////
	mapExample := make(map[string]string) // Creating a map/dict
	mapExample["key1"] = "value1"         // Assigning a value
	// Check if key is in dictionary
	if _, ok := mapExample["key1"]; ok {
		fmt.Println("Key is present in dictionary")
	}
	// Iterate over a dictionary
	for key, value := range mapExample {
		fmt.Printf("Key: %s Value: %s\n", key, value)
	}
	delete(mapExample, "key1") // Delete key from a map

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
	// For each
	listExample := []string{"Tulip", "Jasmine", "Rose", "Lili", "Daisy"}
	for _, element := range listExample {
		fmt.Println(element)

	}

}
