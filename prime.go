package prime

func Get(n int) int {
	c := make(chan int)
	var p int
	go gen(c)
	for i := 1; i <= n; i++ {
		p = <-c
		c1 := make(chan int)
		go filter(c, c1, p)
		c = c1
	}

	return p
}

func gen(c chan<- int) {
	for i := 2; ; i++ {
		c <- i
	}
}

func filter(in <-chan int, out chan<- int, p int) {
	for {
		i := <-in
		if i%p != 0 {
			out <- i
		}
	}
}
