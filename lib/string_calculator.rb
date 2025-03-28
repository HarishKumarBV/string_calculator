class StringCalculator
    def add(input)
        return 0 if input.empty?
        # handle negetive number in the input
        if input.match?(/-?\d+/) && input.match?(/-/)
            raise "negatives not allowed: #{input.scan(/-?\d+/).select { |num| num.to_i < 0 }.join(', ')}"
        end
        # handle custom delimiter
        delimiter = /[\n,]/ # Default delimiters
        
        # Check for custom delimiter
        if input.start_with?('//')
            parts = input.split("\n", 2)
            custom_delimiter = parts[0][2..-1] # Extract the custom delimiter
            input = parts[1] # The rest is the numbers
            delimiter = Regexp.new(Regexp.escape(custom_delimiter)) # Create a regex for the custom delimiter
        end
        numbers = input.split(/#{delimiter}/e).map(&:to_i)
        print numbers.inspect
        numbers.sum
    end
end 