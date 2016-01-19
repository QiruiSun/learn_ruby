class Changer
  # attr_accessor :amount_of_money
  def initialize(amount_of_money)
    @amount_of_money = amount_of_money

  end

  def self.make_change(value)
    changes = []

    if value % 25 == 0
      n = value / 25
      # n.times { |25| changes < 25 }
      changes = Array.new(n, 25)
    elsif value % 10 == 0
      n = value / 10
      changes = Array.new(n, 10)
    else
      twentyfive_test = value / 25
      puts "#{twentyfive_test}"
      twentyfive_left = value - 25 * twentyfive_test
      puts "#{twentyfive_left}"
      ten_test = twentyfive_left / 10
      puts "#{ten_test}"
      ten_left = twentyfive_left - ten_test * 10
      puts "#{ten_left}"
      five_test = ten_left / 5
      puts "#{five_test}"
      five_left = ten_left - five_test * 5
      puts "#{five_left}"
        # if 25_test > 1
          #  if twentyfive_left % 10 == 0
          #    twentyfive_left_ten = twentyfive_left / 10
          #    changes = Array.new(twentyfive_test, 25) + Array.new(twentyfive_left_ten, 10)
           #
          #  else
             changes = Array.new(twentyfive_test, 25) + Array.new(ten_test, 10) + Array.new(five_test, 5) + Array.new(five_left, 1)



          #  end
           #
    end
  end
end
