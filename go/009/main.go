/*
 * ProjectEuler 009
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    for a := 1; a <= 332; a++ {
        for b := a + 1; b < 1000 - a - b; b++ {
            if 2 * a * b - 2000 * (a + b) + 1000000 == 0 {
                fmt.Printf("%d\n", a * b * (1000 - a - b))
                break;
            }
        }
    }
}
