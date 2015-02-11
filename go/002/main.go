/*
 * ProjectEuler 002
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
    a := 0
    b := 1
    for a <= 4000000 {
        t := a
        a  = b
        b += t
        if a % 2 == 0 {
            sum += a
        }
    }
    fmt.Printf("%d\n", sum)
}
