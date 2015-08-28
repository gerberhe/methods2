require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative 'methods2'

class Methods2Test < MiniTest::Test
	def setup
		@m = Class.new do
     include Methods2
   	end.new
	end

	def test_elevenish
		assert_equal true,@m.elevenish?(11)
		assert_equal true,@m.elevenish?(12)
		assert_equal true,@m.elevenish?(22)
		assert_equal true,@m.elevenish?(23)
		assert_equal false,@m.elevenish?(21)
		assert_equal false,@m.elevenish?(15)
	end

	def test_ice_cream_party
		assert_equal 1,@m.ice_cream_party?(5,5)
		assert_equal 1,@m.ice_cream_party?(7,7)
		assert_equal 1,@m.ice_cream_party?(8,7)
		assert_equal 1,@m.ice_cream_party?(7,9)
		assert_equal 2,@m.ice_cream_party?(10,5)
		assert_equal 2,@m.ice_cream_party?(5,10)
		assert_equal 2,@m.ice_cream_party?(10,20)
		assert_equal 2,@m.ice_cream_party?(20,10)
		assert_equal 0,@m.ice_cream_party?(4,4)
		assert_equal 0,@m.ice_cream_party?(3,3)
		assert_equal 0,@m.ice_cream_party?(2,3)
		assert_equal 0,@m.ice_cream_party?(1,4)
		assert_equal 0,@m.ice_cream_party?(2,4)
		assert_equal 0,@m.ice_cream_party?(4,2)
	end

	def test_successful_squirrel_party
		assert_equal true, @m.successful_squirrel_party?(50,false)
		assert_equal true, @m.successful_squirrel_party?(50,true)
		assert_equal true, @m.successful_squirrel_party?(55,true)
		assert_equal true, @m.successful_squirrel_party?(55,false)
		assert_equal true, @m.successful_squirrel_party?(70,true)
		assert_equal true, @m.successful_squirrel_party?(75,true)
		assert_equal false, @m.successful_squirrel_party?(70,false)
		assert_equal false, @m.successful_squirrel_party?(75,false)
		assert_equal false, @m.successful_squirrel_party?(35,false)
		assert_equal false, @m.successful_squirrel_party?(35,true)
		assert_equal false, @m.successful_squirrel_party?(32,true)
		assert_equal false, @m.successful_squirrel_party?(32,false)
	end

	def test_ticket
		assert_equal 10, @m.ticket?(7,3,5)
		assert_equal 10, @m.ticket?(4,6,5)
		assert_equal 10, @m.ticket?(4,6,4)
		assert_equal 10, @m.ticket?(5,5,4)
		assert_equal 10, @m.ticket?(2,6,8)
		assert_equal 5, @m.ticket?(5,5,0)
		assert_equal 5, @m.ticket?(5,0,5)
		assert_equal 5, @m.ticket?(0,5,5)
		assert_equal 5, @m.ticket?(0,5,5)
		assert_equal 0, @m.ticket?(0,2,3)
		assert_equal 5, @m.ticket?(2,4,3)
		assert_equal 0, @m.ticket?(2,3,3)
	end

end
