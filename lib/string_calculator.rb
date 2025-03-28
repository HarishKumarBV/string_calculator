class StringCalculator
    def add(input)
        return 0 if input.empty?
        return input.to_i if input.match?(/^\d+$/)
    end
end 