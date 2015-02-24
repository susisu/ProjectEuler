/*
 * ProjectEuler 004
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import (
    "fmt"
)

func main() {
    max := 0
    for i := 100; i < 1000; i++ {
        for j := 100; j < 1000; j++ {
            p := i * j;
            if isPalinfrome(p) && p > max {
                max = p
            }
        }
    }
    fmt.Printf("%d\n", max)
}

func isPalinfrome(n int) bool {
    s := fmt.Sprintf("%d", n)
    l := len(s)
    h := l / 2
    for i := 0; i < h; i++ {
        if s[i] != s[l - 1 - i] {
            return false;
        }
    }
    return true;
}
