class Float
  define_method(:coins) do
    answer = [0,0,0,0]
    quarters = self./(0.25).floor()
    answer[0] = quarters

    quarter_remainder = self.-(quarters.*(0.25)).round(2)
    dimes = quarter_remainder./(0.1).floor()
    answer[1] = dimes

    dime_remainder = quarter_remainder.-(dimes.*(0.1)).round(2)
    nickels = dime_remainder./(0.05).floor()
    answer[2] = nickels

    nickel_remainder = dime_remainder.-(nickels.*(0.05)).round(2)
    answer[3] = nickel_remainder.*(100) #pennies

    answer
  end
end
