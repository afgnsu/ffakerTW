# frozen_string_literal: true

require_relative 'helper'

class TestAddressCA < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressCA,
    :province, :province_abbr, :city, :postal_code
  )

  def test_province
    assert_match(/\A[ a-z]+\z/i, FFakerTW::AddressCA.province)
  end

  def test_province_abbr
    assert_match(/\A[A-Z]{2}\z/, FFakerTW::AddressCA.province_abbr)
  end

  def test_city
    assert_include(FFakerTW::AddressCA::CITY, FFakerTW::AddressCA.city)
  end

  def test_postal_code
    assert_match(
      /\A[A-CEGHJK-NPR-TVXY]\d[A-CEGHJK-NPR-TV-Z] \d[A-CEGHJK-NPR-TV-Z]\d\z/,
      FFakerTW::AddressCA.postal_code
    )
  end
end
