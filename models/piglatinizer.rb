require 'pry'
class PigLatinizer
  def piglatinize(user_text)
    if user_text.split(" ").count == 1
      if user_text.downcase.index(/[aeiou]/) == 0
        user_text + "way"
      else
        vowel_index = user_text.index(/[aeiou]/)
        front = user_text.slice!(0..vowel_index-1)
        user_text + front + "ay"
      end
    else
      array = user_text.split(" ")
      pig_phrase = user_text.collect |word| do
        if user_text.downcase.index(/[aeiou]/) == 0
          user_text + "way"
        else
          vowel_index = user_text.index(/[aeiou]/)
          front = user_text.slice!(0..vowel_index-1)
          user_text + front + "ay"
        end
      end.join(" ")
    end
  end
end