class StringCalculator
    def add(input)
        return 0 if input.empty?
        # return input.to_i if input.match?(/^\d+$/) # This line is not needed as we handle it in the map below
        # numbers = input.split(/[\n,]/).map(&:to_i)

        delimiter = /[\n,]/ # Default delimiters
        if input.start_with?('//')
            parts = input.split("\n", 2)
            custom_delimiter = parts[0][2..-1] # Extract the custom delimiter
            input = parts[1] # The rest is the numbers
            delimiter = Regexp.new(Regexp.escape(custom_delimiter)) # Create a regex for the custom delimiter
        end
        numbers = input.split(/#{delimiter}/).map(&:to_i)
        print numbers.inspect
        numbers.sum
    end
end 