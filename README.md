# SecretNumber

[![Build Status](https://travis-ci.org/getabetterpic/secret_number.svg?branch=master)](https://travis-ci.org/getabetterpic/secret_number)

Given the function `#secret` that accepts a single integer parameter and returns an integer, this program takes one command-line argument (a number) and determines if the `#secret` function is additive [secret(x+y) = secret(x) + secret(y)], for all combinations x and y, where x and y are all prime numbers less than the number passed via the command-line argument.

## Usage

1. `gem install secret_number`
1. `secret #` where # is a positive integer

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/getabetterpic/secret_number. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
