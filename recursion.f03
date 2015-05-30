program recursion
	implicit none
	integer::fib
	real::fastfib
	write(*,*) fib(20)
	write(*,*) fastfib(real(100))
end program recursion

function fastfib(f)
	real::f
	real::fastfib
	fastfib = helpfib(f, real(0), real(1))
	contains
	recursive function helpfib(n, a, b) result(r)
		real::n,a,b
		real::r
		if (n == 0) then
			r = a
		else
			r = helpfib(n-1, b, a+b)
		end if
	end function helpfib
end function fastfib

recursive function fib(n) result(a)
	integer::n
	integer::a
	if (n < 2) then
		a = n
	else
		a = fib(n - 1) + fib(n - 2)
	end if
end function fib