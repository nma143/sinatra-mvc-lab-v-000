class PigLatinizer

  attr_reader :text

  def initialize
  end

  def piglatinize(text)

    words = text.split(/\W+/)
    text_converted = ""


    end
  end
  def piglatinize_single_word(word)
    word_converted=""
    
    if word.match(/\A[aeiou]|[AIEOU]/) #if it starts with a vowel, just append 'way'
      #text[0]=text[0].upcase!
      word_converted += word + "way"
    else #else find the prefix (all letters before first vowel), append with 'ay'
      parts = word.split /([aeiou].*)/ #=> e.g ["b", "anana"]
      suffix = parts[0]+"ay"
      #parts[1][0].upcase
      word_converted += parts[1] + suffix
    end
    word_converted
  end
end
