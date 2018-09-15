class PigLatinizer

  attr_reader :text

  def initialize
  end

  def piglatinize(text)
    suffix = text[0]+"ay"
    text[0]=""
    text + suffix
  end

end
