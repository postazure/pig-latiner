class String
  def rotate num = 1
    some_str = self
    some_str = some_str[num..-1] + some_str[0..num-1]
    some_str
  end


  def to_piglatin
    some_str = self
    words = some_str.split(" ")
    converted_words = []

    words.each do |word|

      cap_word = (word[0] =~ /[A-Z]/)
      punc = ""
      while true

       if word[-1] =~/[.,?!]/
         punc = word[-1]
         word[-1] = ""
       end

        if word[0] =~ /[^aeiouqAEIOUQ]/
          word = word.rotate
        elsif word[0].downcase == "q"
          word = word.rotate(2)
        else
          word = word + 'ay' + punc
          break
        end
      end

      word.capitalize! if cap_word
      converted_words.push(word)
    end

    converted_words.join(" ")


  end
end
