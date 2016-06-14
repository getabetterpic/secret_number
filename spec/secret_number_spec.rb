require 'spec_helper'

describe SecretNumber do
  it 'has a version number' do
    expect(SecretNumber::VERSION).not_to be nil
  end

  it 'fails if no argument given' do
    expect { SecretNumber::Application.new([]) }.to raise_error(SecretNumber::NoArgumentFoundError)
  end

  it 'fails if anything other than a positive integer is given' do
    expect { SecretNumber::Application.new(['string']) }.to raise_error(SecretNumber::IntegerNotFoundError)
    expect { SecretNumber::Application.new(['1.23']) }.to raise_error(SecretNumber::IntegerNotFoundError)
    expect { SecretNumber::Application.new(['-5']) }.to raise_error(SecretNumber::IntegerNotFoundError)
  end

  context '#is_prime' do
    it 'returns true if given number is prime' do
      expect(SecretNumber::Application.new(['5']).is_prime).to eq(true)
    end

    it 'returns false if given number is not prime' do
      expect(SecretNumber::Application.new(['6']).is_prime).to eq(false)
    end

    it 'returns false if given number is 0' do
      expect(SecretNumber::Application.new(['0']).is_prime).to eq(false)
    end

    it 'returns false if given number is 1' do
      expect(SecretNumber::Application.new(['1']).is_prime).to eq(false)
    end
  end

  context '#is_secret_additive' do
    it 'returns true if combination of all prime numbers less than given number are additive' do
      app = SecretNumber::Application.new(['7'])
      expect(app.is_secret_additive).to eq(true)
    end


  end
end
