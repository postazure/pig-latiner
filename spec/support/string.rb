class String
  def rotate! num = 1
    some_str = self
    some_str = some_str[num..-1] + some_str[0..num-1]
    replace some_str
  end

  def vowel?
    ['a','e','i','o','u'].include?(self.downcase)
  end

  def punctuation?
    ['.',',','?','!'].include?(self)
  end

  def first
    self[0]
  end

  def first= str
    word = self
    word[0] = str

    replace word
  end

  def last
    self[-1]
  end

  def last= str
    word = self
    word[-1] = str

    replace word
  end


  def to_piglatin
    some_str = self
    converted_words = []

    words = some_str.split(" ")
    words.each do |word|

      cap_word = (word.first == word.first.upcase)
      punc = ""

      while !word.first.vowel?
        if word.last.punctuation?
          punc = word.last
          word.last = ""
        end

        if !(word.first.vowel? || word.first.downcase.include?("q"))
          word.rotate!
        elsif word.first.downcase == "q"
          word.rotate!(2)
        end
      end

      word = word + 'ay' + punc
      word.capitalize! if cap_word
      converted_words.push(word)
    end

    converted_words.join(" ")
  end
end
