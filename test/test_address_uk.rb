# frozen_string_literal: true

require_relative 'helper'

class TestAddressUK < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressUK,
    :country, :county, :postcode
  )

  def test_county
    assert_match(/[ a-z]/, FFakerTW::AddressUK.county)
  end

  def test_country
    assert_match(/[ a-z]/, FFakerTW::AddressUK.country)
  end

  def test_postcode
    assert_match(/^[A-Z]{2}\d \d[A-Z]{2}|[A-Z]{2}\d\d \d[A-Z]{2}$/,
                 FFakerTW::AddressUK.postcode)
  end
end
