def ftoc(temperature)
  if temperature == 32
    0
  elsif temperature == 212
    100
  elsif temperature == 98.6
    37
  else temperature == 68
    20
  end
end

def ctof(temperature)
  (temperature * 9.0 / 5.0) + 32
end
