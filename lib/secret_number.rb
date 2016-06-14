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
  end
end
