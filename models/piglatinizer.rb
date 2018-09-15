class PigLatinizer

  attr_reader :text

  def initialize
  end

  def piglatinize(text)
    text.downcase!

    if text.match(/\A[aeoui]/) #if it starts with a vowel, just append 'way'
      #text[0]=text[0].upcase!
      text + "way"
    else #else find the prefix (all letters before first vowel), append with 'ay'
      parts = text.split /([aeiou].*)/ #=> e.g ["b", "anana"]
      suffix = parts[0]+"ay"
      #parts[1][0].upcase
      parts[1] + suffix
    end




  end

end
