/*
 * ProjectEuler 003
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    n := 600851475143
    p := 2
    for n > 1 {
        if n % p == 0 {
            n /= p
        } else {
            p++
        }
    }
    fmt.Printf("%d\n", p)
}
