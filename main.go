package main

import (
	"fmt"
	"runtime"
)

func main() {
	version := "dev"
	fmt.Println("example", version, runtime.GOOS, runtime.GOARCH)
}
