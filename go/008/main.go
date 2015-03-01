/*
 * ProjectEuler 008
 * Go / main.go
 * copyright (c) 2015 Susisu
 *
 * Go 1.4.1
 * `go build -o bin/main main.go`
 */


package main

import (
    "fmt"
    "log"
    "os"
)

func main() {
    l := 1000

    file, err := os.Open("./digits.txt")
    if err != nil {
        log.Fatal(err)
    }
    digits := make([]byte, l)
    _, err = file.Read(digits)
    if err != nil {
        log.Fatal(err)
    }
    file.Close()

    n := 13
    max := 0
    for i := 0; i <= l - n; i++ {
        p := 1
        for j := 0; j < n; j++ {
            p *= digitToInt(digits[i + j])
        }
        if p > max {
            max = p
        }
    }
    fmt.Printf("%d\n", max)
}

func digitToInt(d byte) int {
    n := int(d) - 48
    if n < 0 || 9 < n {
        return 0
    } else {
        return n
    }
}
