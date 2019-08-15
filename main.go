package main

import (
	"fmt"
)

var (
	// Version of climbcomp-proto
	Version string
)

func main() {
	msg := fmt.Sprintf("Climbcomp CLI v%v", Version)
	fmt.Println(msg)
}
