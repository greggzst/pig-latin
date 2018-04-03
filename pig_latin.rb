def pig_latin(arr)
  pig = []
  arr.each do |elem|
    case elem[0]
    when 'a','e','i','o','u'
      pig << vowel_pig(elem)
    else
      pig << consonant_pig(elem)
    end
  end
  sentence = pig.join(' ')
  puts "Your sentence in pig latin is #{sentence}"
end

def vowel_pig(word)
  word << "yay"
end

def consonant_pig(word)
  after_cons = word.slice!(1,word.length)
  word.insert(0,after_cons)
  word << "ay"
end

puts "Type text to be converted to pig latin "
user_input = gets.chomp.downcase.split(' ')

pig_latin(user_input)



