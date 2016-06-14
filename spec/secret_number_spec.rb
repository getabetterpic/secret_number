require 'spec_helper'

describe SecretNumber do
  it 'has a version number' do
    expect(SecretNumber::VERSION).not_to be nil
  end

  it 'fails if no argument given' do
    expect { SecretNumber::Application.new([]).run }.to raise_error(SecretNumber::NoArgumentFoundError)
  end

  it 'fails if anything other than an integer is given' do
    expect { SecretNumber::Application.new(['string']).run }.to raise_error(SecretNumber::IntegerNotFoundError)
    expect { SecretNumber::Application.new([1.23]).run }.to raise_error(SecretNumber::IntegerNotFoundError)
  end

  context '#is_prime' do
    it 'returns true if given number is prime' do
      expect(SecretNumber::Application.new([5]).is_prime(5)).to eq(true)
    end

    it 'returns false if given number is not prime' do
      expect(SecretNumber::Application.new([6]).is_prime(6)).to eq(false)
    end
  end
end
