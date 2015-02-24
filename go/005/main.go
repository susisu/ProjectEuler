/*
 * ProjectEuler 005
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    p := 1
    for i := 1; i <= 20; i++ {
        p *= i / gcd(p, i)
    }
    fmt.Printf("%d\n", p)
}

func gcd(a int, b int) int {
    if a < b {
        return gcd(b, a)
    } else if b == 0 {
        return a
    } else {
        return gcd(b, a % b)
    }
}
