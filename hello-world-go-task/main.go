package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Hello, World new!!")
	for i, arg := range os.Args[1:] {
		fmt.Println("Arg", i, ": ", arg)
	}
}
