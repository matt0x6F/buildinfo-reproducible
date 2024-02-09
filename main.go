package main

import (
	"fmt"

	"github.com/matt0x6f/buildinfo-repeatable/internal"
)

func main() {
	fmt.Println("Hello world!")

	fmt.Printf("Go version: %s\n", internal.GoVersion)
	fmt.Printf("Git tag: %s\n", internal.GitTag)
	fmt.Printf("Commit hash: %s\n", internal.CommitHash)
}
