require "minitest/autorun"
require_relative "exact_change.rb"

class Testvariouscoinamounts < Minitest::Test
		# Several tests with different change amounts:
	def test_changecount_for_1_cent_returns_1_penny
		seeking = {:penny=>1}
		method_input=exact_change(1)
		assert_equal(seeking, method_input)
	end

	def test_changecount_for_5_cents_returns_1_nickle
		seeking = {:nickle=>1}
		method_input=exact_change(5)
		assert_equal(seeking, method_input)
	end	

	def test_changecount_for_10_cents_returns_1_dime
		seeking = {:dime=>1}
		method_input=exact_change(10)
		assert_equal(seeking, method_input)
	end

	def test_changecount_for_25_cents_returns_1_quarter
		seeking = {:quarter=>1}
		method_input=exact_change(25)
		assert_equal(seeking, method_input)
	end

	def test_changecount_for_75_cents_returns_3_quarters
		seeking = {:quarter=>3}
		method_input=exact_change(75)
		assert_equal(seeking, method_input)
	end

	def test_changecount_for_26_cents_returns_1_quarter_1_penny
		seeking = {:quarter=>1, :penny=>1}
		method_input=exact_change(26)
		assert_equal(seeking, method_input)
	end

	def test_changecount_for_99_cents_returns_3_quarters_2_dimes_4_pennies
		seeking = {:quarter=>3, :dime=>2, :penny=>4}
		method_input=exact_change(99)
		assert_equal(seeking, method_input)
	end

end