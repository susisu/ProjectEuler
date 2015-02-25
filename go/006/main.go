/*
 * ProjectEuler 006
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    s := 0
    t := 0
    for n := 1; n <= 100; n++ {
        s += n
        t += n * n
    }
    fmt.Printf("%d\n", s * s - t)
}
