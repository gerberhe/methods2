module Methods2
	
	# TODO - write elevenish?

	def elevenish?(n)
		if n % 11 == 0 || (n - 1) % 11 == 0
			true
		else
			false
		end
	end
	
	# TODO - write ice_cream_party?

	def ice_cream_party?(i,c)
		if i <5 || c < 5
			0 
		elsif	c == (2*i) || i == (2 * c)
			2
		elsif	i >= 5 && c >= 5
			1
		end
	end
	
	# TODO - write successful_squirrel_party?

	def successful_squirrel_party?(n,weekend)
		if n >=40 && n <=60 && !weekend
			true
		elsif n < 40
			false
		elsif n >= 40 && weekend
			true
		elsif n >= 40 && !weekend
			false
		end
	end
	
	# TODO - write ticket

	def ticket?(a,b,c)

		ab = a + b
		bc = b + c
		ac = a + c
		
		if ab == 10 || bc == 10 || ac == 10|
			10
		elsif ab == 2 * bc || ab == 2 * ac || bc == 2 * ab || bc == 2 * ac || ac == 2 * ab || ac == 2 * bc
			5
		else
			0
		end
	end

	# TODO - write in_order?

	def in_order?(a,b,c,bOk)
		if a < b && b < c && bOk == false
			true
		elsif a > b && b < c && bOk == true
			true
		elsif a > b && b < c && bOk == false
			false
		else
			false
		end
	end

	# TODO - write less_by_ten?

	def less_by_ten?(a,b,c)
		if (a - 10) >= b || (a - 10) >= c || (b - 10) >= a || (b - 10) >= c || (c - 10) >= a || (c - 10 >= b)
			true
		else
			false
		end
	end
	
	# TODO - write fizz_string

	def fizz_string?(str)
		if str[0].downcase == "f" && str[str.length - 1] == "b"
			"FizzBuzz"
		elsif str[0].downcase == "f"
			"Fizz"
		elsif str[str.length - 1] == "b"
			"Buzz"
		else
			str
		end
	end

	# TODO - write first_last_six?

	def first_last_six?(num)
		if num[0] == 6 || num[num.length - 1] == 6
			true
		else
			false
		end
	end

	# TODO - write rotate_left

	def rotate_left?(array)
		array = [array[1], array[2], array[0]]
		array
	end

	# TODO - write double23?

	def double23?(array)
		i = 0
		threes = 0
		twos = 0
		begin
			if(array[i]) == 3
				threes += 1
			elsif(array[i]) == 2
				twos += 1
			end
			i += 1
		end until i > array.length
		if twos >= 2 || threes >= 2
			true
		else
			false
		end
	end

end