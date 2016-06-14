require_relative "./secret_number/version"

module SecretNumber
  class IntegerNotFoundError < StandardError; end
  class NoArgumentFoundError < StandardError; end

  class Application
    def initialize(argv)
      @number = argv[0]
    end

    def run
      raise NoArgumentFoundError, 'You must supply an integer as an argument' if @number == nil
      raise IntegerNotFoundError, 'Sorry, the argument you pass must be an integer' unless @number =~ /\d+/
    end

    def is_prime(test_number)
      for number in 2..(test_number - 1)
        if (test_number % number) == 0
          return false
        end
      end
      return true
    end
  end
end
