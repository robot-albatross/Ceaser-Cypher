def jumper(set, letter, step)
  for result in set do
    if result == letter
      index = set.find_index(letter)
      if index + step > set.length
        return set[(index + step) % set.length]
      else
         return set[index + step]
      end
    end
  end
end

def ceaser_cypher(phrase, step)
  alphabet = ("a" .. "z").to_a
  upper_alphabet = ("A" .. "Z").to_a
  output = ""

  for word in phrase.split do
    for letter in word.each_char do
      if alphabet.include?(letter)
        output.concat(jumper(alphabet, letter, step))
      elsif upper_alphabet.include?(letter)
        output.concat(jumper(upper_alphabet, letter, step))
      else
        output.concat(letter)
      end
    end
    output.concat(" ")
  end
  
  p(output.slice(0,output.length - 1)) #removes last space
end

ceaser_cypher("What a string!", 1)