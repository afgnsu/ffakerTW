# frozen_string_literal: true

require_relative 'helper'

class TestAddressSE < Test::Unit::TestCase
  include DeterministicHelper

  ALPHA = /\A\p{Alpha}+/.freeze
  DIGIT = /\d{1}/.freeze

  assert_methods_are_deterministic(
    FFakerTW::AddressSE,
    :city, :random_country, :full_address, :zip_code
  )

  def test_se_city
    assert_match(ALPHA, FFakerTW::AddressSE.city)
  end

  def test_se_zip_code
    assert_match(/\d{2}/, FFakerTW::AddressSE.zip_code)
  end

  def test_countries
    assert FFakerTW::AddressSE::COUNTRIES.include?(FFakerTW::AddressSE.random_country)
  end

  def test_se_full_address
    address = FFakerTW::AddressSE.full_address
    assert_match(ALPHA, address)
    assert_match(DIGIT, address)
    assert_match(/SVERIGE/, address)
    assert_match(/[, a-z]/, address)
  end

  def test_se_zip_code_frozen
    assert FFakerTW::AddressSE.zip_code.frozen? == false
  end
end
