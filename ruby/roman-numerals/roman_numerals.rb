class Fixnum
  NUMERAL_VALUES = {
    'M' => 1000, 'D' => 500, 'C' => 100,
    'L' => 50, 'X' => 10, 'IX' => 9, 'V' => 5,
    'IV' => 4, 'I' => 1
  }

  def to_roman
    roman = ""
    num = self
    NUMERAL_VALUES.each do |numeral, value|
      while num >= value
        num -= value
        roman << numeral
      end
    end
    roman
  end
end
