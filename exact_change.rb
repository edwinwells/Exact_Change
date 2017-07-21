def exact_change(changevalue)

	#changevalue as an argument which represents the total value of change to be analyzed;
	#changecomponents is the working hash which enumerates the only possible coins to be used to be given as change (this may be expanded, i.e. half-dollars, Susan B's, etc.), enumerating the hash thusly: key=coinname, value=coinvalue;
	#changecount is a new hash, to be populated thru' sequential analysis, in a do-loop, of the compared changevalue argument and the changecomponents hash:
	changevalue=changevalue.to_i
  changecomponents = { quarter: 25, dime: 10, nickle: 5, penny: 1 }
  changecount = {}

  	changecomponents.each do |coinname, coinvalue|
		changecount[coinname] = 0 if changevalue >= coinvalue
		(changevalue -= coinvalue; changecount[coinname] += 1) while changevalue >= coinvalue
	end

return changecount

end
		#Write & run several tests