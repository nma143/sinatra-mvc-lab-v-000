class PigLatinizer

  attr_reader :text

  def initialize
  end

  def piglatinize(text)
    text.downcase!

    if text.match(/\A[aeoui]/) #if it starts with a vowel, just append 'way'
      text[0].upcase!
      text + "way"
    else #else find the prefix (all letters before first vowel), append with 'ay'
      suffix = text[0]+"ay"
      text[0]=""
      text + suffix
    end




  end

end
