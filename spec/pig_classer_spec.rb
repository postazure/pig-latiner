require 'spec_helper'

describe PigClasser do
  xit "translates a word beginning with a vowel" do
    translation = PigClasser.translate("apple")
    expect(translation).to be ==  "appleay"
  end

  xit "translates a word beginning with a consonant" do
    translation = PigClasser.translate("banana")
    expect(translation).to be ==  "ananabay"
  end

  xit "translates a word beginning with two consonants" do
    translation = PigClasser.translate("cherry")
    expect(translation).to be ==  "errychay"
  end

  xit "translates two words" do
    translation = PigClasser.translate("eat pie")
    expect(translation).to be ==  "eatay iepay"
  end

  xit "translates a word beginning with three consonants" do
    translation = PigClasser.translate("three")
    expect(translation).to be == "eethray"
  end

  xit "counts 'sch' as a single phoneme" do
    translation = PigClasser.translate("school")
    expect(translation).to be ==  "oolschay"
  end

  xit "counts 'qu' as a single phoneme" do
    translation = PigClasser.translate("quiet")
    expect(translation).to be ==  "ietquay"
  end

  xit "counts 'qu' as a consonant even when xit's preceded by a consonant" do
    translation = PigClasser.translate("square")
    expect(translation).to be ==  "aresquay"
  end

  xit "translates many words" do
    translation = PigClasser.translate("the quick brown fox")
    expect(translation).to be == "ethay ickquay ownbray oxfay"
  end

  xit "handles capitalization of a word" do
    translation = PigClasser.translate("Square")
    expect(translation).to be == "Aresquay"
  end

  xit "handles capitalization within a sentence" do
    translation = PigClasser.translate("the quick brown Fox")
    expect(translation).to be == "ethay ickquay ownbray Oxfay"
  end

  xit "leaves punctuation alone" do
    translation = PigClasser.translate("The quick, brown fox.")
    expect(translation).to be == "Ethay ickquay, ownbray oxfay."
  end
end
