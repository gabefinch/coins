class Float
  define_method(:coins) do
    answer = [0,0,0,0]
    remainder = self
    coin_values = [0.25, 0.1, 0.05, 0.01]
    coin_values.each() do |value|
      coindex = coin_values.index(value)
      until remainder.<(value)
        answer[coindex] = answer[coindex].+(1)
        remainder = remainder.-(value).round(2)
      end
    end
    answer
  end
end
