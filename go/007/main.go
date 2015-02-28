/*
 * ProjectEuler 007
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import (
    "fmt"
    "math"
)

func main() {
    counter := 0
    n := 2
    for true {
        if isPrime(n) {
            counter++
            if counter == 10001 {
                break
            }
        }
        n++
    }
    fmt.Printf("%d\n", n)
}

func isPrime(n int) bool {
    if n < 2 {
        return false
    }
    r := int(math.Sqrt(float64(n)));
    for i := 2; i <= r; i++ {
        if n % i == 0 {
            return false
        }
    }
    return true
}
