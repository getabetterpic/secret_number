require_relative "./secret_number/version"

module SecretNumber
  class IntegerNotFoundError < StandardError; end
  class NoArgumentFoundError < StandardError; end

  class Application
    def initialize(argv)
      raise NoArgumentFoundError, 'You must supply an integer as an argument' if argv[0] == nil
      raise IntegerNotFoundError, 'Sorry, the argument you pass must be an integer' unless argv[0] =~ /\d+/

      @number = argv[0].to_i
    end

    def run
      if is_secret_additive
        puts "The secret function for the integer #{@number} is additive"
        exit 0
      else
        puts "The secret function for the integer #{@number} is not additive"
        exit 1
      end
    end

    def is_prime(test_number = @number)
      return false if test_number.abs < 2
      for number in 2..(test_number - 1)
        if (test_number % number) == 0
          return false
        end
      end
      return true
    end

    def is_secret_additive(test_number = @number)
      prime_array = []
      counter = 0
      while counter < test_number
        prime_array << counter if is_prime(counter)
        counter += 1
      end

      prime_array.each do |x|
        prime_array.each do |y|
          return false if secret(x + y) != secret(x) + secret(y)
        end
      end
      return true
    end

    def secret(integer)
      integer
    end
  end
end
