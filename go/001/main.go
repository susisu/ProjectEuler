/*
 * ProjectEuler 001
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    sum := 0
    for n := 1; n < 1000; n++ {
        if n % 3 == 0 || n % 5 == 0 {
            sum += n
        }
    }
    fmt.Printf("%d\n", sum)
}
