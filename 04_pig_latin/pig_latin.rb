def translate(string)
  string_array = string.split()
  n = 0
  string_array.each do |word|
  # first_letter = word[0].downcase
    if  word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
        string_array[n] = word.to_s + "ay"
    elsif word[0..2] == "sch"
      word.slice!(0..2)
      string_array[n] = word.to_s + "sch" + "ay"
    elsif word[0..1] == "qu" || word[1..2] == "qu"
      number = (word.index("qu") + 1)
      new_word_2 = word[0..number]
      word.slice!(0..number)
      string_array[n] = word.to_s +  new_word_2 + "ay"
    elsif word[2] != "a" && word[2] != "i" && word[2] != "e" && word[2] !="o" && word[2] != "u" && word[1] != "a" && word[1] != "i" && word[1] != "e" && word[1] !="o" && word[1] != "u"
      new_word_1 = word[0..2].to_s
      word.slice!(0..2)
      string_array[n] = word.to_s + new_word_1 + "ay"
    elsif word[1] != "a" && word[1] != "i" && word[1] != "e" && word[1] !="o" && word[1] != "u"
      new_word = word[0..1].to_s
      word.slice!(0..1)
      string_array[n] = word.to_s + new_word + "ay"
    else
      new_word_3 = word[0]
      word.slice!(0)
      string_array[n] = word.to_s + new_word_3 +"ay"
      # case word
      # when word[1].include? ("aeiou")
    # unless word[1].include? ("aeiou") || word[2].include? ("aeiou")

  end
  n += 1
 end.join(" ")
end

# class Consonant
#   def.self.test
