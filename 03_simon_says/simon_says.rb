def echo(sound)
  "#{sound}"
end

def shout(sound)
  "#{sound.to_s.upcase}"
end

def repeat(sound, n = 2)
   ("#{sound} " * n).strip
end

def start_of_word(string, n)
  string[0..n-1]
end

def first_word(string)
  (string.partition(" "))[0]
end

def titleize(string)
  string_array = string.split(" ")
  string_array.each do |x|
    if x == string_array[0]  # if x == string.split(" ")[0]
      x.capitalize!
    elsif x != "the" && x != "over" && x != "on" && x != "and"
      x.capitalize!
    else
      x
    end
  end
 string_array.join(" ")
end
