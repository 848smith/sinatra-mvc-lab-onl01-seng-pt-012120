require 'pry'
class PigLatinizer
  def piglatinize(word)
    if word.downcase.index(/[aeiou]/) == 0
      word + "way"
    else
      vowel_index = word.index(/[aeiou]/)
      front = word.slice!(0..vowel_index-1)
      word + front + "ay"
    end
  end
  
  def phrase_to_pig(phrase)
    array = phrase.split(" ")
    pig_phrase = phrase.collect |word| do
      
  end
end