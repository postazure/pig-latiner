class PigLatin
  def initialize word
    @word = word
  end

  def translate

    words = @word.split(" ")
    converted_words = []

    words.each do |word|
      cap_word = word
      punc = ""
      while true

       if word[-1] =~/[.,?!]/
         punc = word[-1]
         word[-1] = ""
       end

        if word[0] =~ /[^aeiouqAEIOUQ]/
          word = word[1..-1] + word[0]
        elsif word[0].downcase == "q"
          word = word[2..-1] + word[0..1]
        else
          word = word + 'ay' + punc
          break
        end
      end

      converted_words.push(word)
      
      if cap_word[0] =~ /[A-Z]/
        converted_words[-1].capitalize!
      end
    end



    @word = converted_words.join(" ")

  end

end
