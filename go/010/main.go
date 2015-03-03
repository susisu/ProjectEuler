/*
 * ProjectEuler 010
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import "fmt"

func main() {
    n := 2000000
    
    table := make([]bool, n)
    for i := 0; i < n; i++ {
        table[i] = true
    }
    table[0] = false
    table[1] = false

    sum := 0
    for i := 2; i < n; i++ {
        if table[i] {
            for j := i * i; j < n; j += i {
                table[j] = false
            }
            sum += i
        }
    }

    fmt.Printf("%d\n", sum)
}
