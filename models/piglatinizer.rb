require 'pry'
class PigLatinizer
  attr_reader :phrase
  
  def piglatinize(word)
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front = word.slice!(0..vowel_index-1)
      word + front + "ay"
    end
  end
end