def substrings(string, dictionary)
	result_list = Hash.new(0)
	string_words = string.downcase.scan(/\w+/)
	string_words.each do |word|
		dictionary.each do |dic_word|
			# puts word + " " + dic_word
			if word.include? dic_word then
				result_list[dic_word] += 1
			end
		end
	end
	puts "String: " + string
	puts ""
	puts "   Word      |    Frequency"
	result_list.sort_by { |word, frequency| word }.to_h.each do |word, frequency|
		puts "   " + word + " "*(10-word.to_s.length) + "|    " + frequency.to_s
	end
	puts ""
end

puts ""
puts '███████╗██╗   ██╗██████╗ ███████╗████████╗██████╗ ██╗███╗   ██╗ ██████╗ ███████╗
██╔════╝██║   ██║██╔══██╗██╔════╝╚══██╔══╝██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝
███████╗██║   ██║██████╔╝███████╗   ██║   ██████╔╝██║██╔██╗ ██║██║  ███╗███████╗
╚════██║██║   ██║██╔══██╗╚════██║   ██║   ██╔══██╗██║██║╚██╗██║██║   ██║╚════██║
███████║╚██████╔╝██████╔╝███████║   ██║   ██║  ██║██║██║ ╚████║╚██████╔╝███████║
╚══════╝ ╚═════╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝'
puts ""
puts 'The "substrings" takes a word as the first argument and then a dictionary of valid substrings as the second argument and it returns a hash listing each substring (case insensitive) found in the original string and their frequencies.'

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
