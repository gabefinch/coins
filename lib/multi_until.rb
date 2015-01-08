class Float
  define_method(:coins) do
    answer = [0,0,0,0]
    remainder = self
    until remainder.<(0.25)
      answer[0] = answer[0].+(1)
      remainder=remainder.-(0.25).round(2)
    end
    until remainder.<(0.10)
      answer[1] = answer[1].+(1)
      remainder=remainder.-(0.10).round(2)
    end
    until remainder.<(0.05)
      answer[2] = answer[2].+(1)
      remainder=remainder.-(0.05).round(2)
    end
    answer[3] = remainder.*(100).round(0)
    answer
  end
end
