# frozen_string_literal: true

require_relative 'helper'

class TestAddressFI < Test::Unit::TestCase
  include DeterministicHelper

  ALPHA = /\A\p{Alpha}+/.freeze
  DIGIT = /\d{1}/.freeze

  assert_methods_are_deterministic(
    FFakerTW::AddressFI,
    :city, :full_address, :random_country, :zip_code
  )

  def test_fi_city
    assert_match(ALPHA, FFakerTW::AddressFI.city)
  end

  def test_fi_zip_code
    assert_match(/\d{2}/, FFakerTW::AddressFI.zip_code)
  end

  def test_countries
    assert FFakerTW::AddressFI::COUNTRIES.include?(FFakerTW::AddressFI.random_country)
  end

  def test_fi_full_address
    address = FFakerTW::AddressFI.full_address
    assert_match(ALPHA, address)
    assert_match(DIGIT, address)
    assert_match(/SUOMI/, address)
    assert_match(/[, a-z]/, address)
  end

  def test_fi_zip_code_frozen
    assert FFakerTW::AddressFI.zip_code.frozen? == false
  end
end
