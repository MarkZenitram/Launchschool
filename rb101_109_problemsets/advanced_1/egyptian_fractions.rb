def egyptian(num)
  denominator = 1
  denominators_array = []
  rational_total = num
  until rational_total == 0
    current_rational = Rational(1, denominator)
    if current_rational <= rational_total
      rational_total -= current_rational
      denominators_array << denominator
    end

    denominator += 1
  end
  p denominators_array
end




p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
#egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

#unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
#unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
#unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
#unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
#unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
#unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
#unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
#unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)