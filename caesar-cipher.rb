
def caesar_cipher(string, number)
	new_string = ""

	string.length.times do |n|
		char = string[n]
		new_char = char
		
		# For lowercase
		if char =~ /[a-z]/
			new_char = (char.ord + number).chr
			if new_char =~ /[^a-z]/
				new_char = ((new_char.ord) % 122 + 96).chr
			end
		end

		# For uppercase
		if char =~ /[A-Z]/
			new_char = (char.ord + number).chr
			if new_char =~ /[^A-Z]/
				new_char = ((new_char.ord) % 90 + 64).chr
			end
		end

		new_string += new_char
	end
	new_string
end

puts caesar_cipher("What a string!", 5)
