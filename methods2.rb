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

	# TODO - write less_by_ten?
	
	# TODO - write fizz_string

	# TODO - write first_last_six?

	# TODO - write rotate_left

	# TODO - write double23?

end