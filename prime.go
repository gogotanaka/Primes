package main

import (
	"fmt"
)

const N = 100

func main() {
	sieve()
}

// Send the sequence 2, 3, 4, … to channel 'ch'.
func generate(ch chan<- int) {
	for i := 2; i <= N; i++ {
		ch <- i // Send 'i' to channel 'ch'.
	}
	ch <- -1
}

// Copy the values from channel 'src' to channel 'dst',
// removing those divisible by 'prime'.
func filter(src <-chan int, dst chan<- int, prime int) {
	for i := range src { // Loop over values received from 'src'.
		if i%prime != 0 {
			dst <- i // Send 'i' to channel 'dst'.
		}
	}
}

// The prime sieve: Daisy-chain filter processes together.
func sieve() {
	ch := make(chan int) // Create a new channel.
	go generate(ch)      // Start generate() as a subprocess.
	h := true
	for {
		prime := <-ch
		if prime < 0 {
			fmt.Println()
			return
		}
		if !h {
			fmt.Print(", ")
		} else {
			h = false
		}
		fmt.Print(prime)
		ch1 := make(chan int)
		go filter(ch, ch1, prime)
		ch = ch1
	}
}
