class StringCalculator
    def add(input)
        return 0 if input.empty?
        # return input.to_i if input.match?(/^\d+$/)
        numbers = input.split(/[\n,]/).map(&:to_i)
        print numbers.inspect
        numbers.sum
    end
end 