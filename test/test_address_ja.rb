# frozen_string_literal: true

require_relative 'helper'

class TestAddressJA < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressJA,
    :address,  :other_address, :designated_city_address, :tokyo_ward_address,
    :zip_code, :land_number, :tokyo_ward, :ward, :village, :city, :county,
    :prefecture
  )

  def test_postal_code
    assert_match(/^\d{3}-\d{4}$/, FFakerTW::AddressJA.postal_code)
  end

  def test_land_number
    assert_match(/^\d丁目\d番\d号|\d{3}$/, FFakerTW::AddressJA.land_number)
  end

  def test_street
    assert_match(japanese_regex(''), FFakerTW::AddressJA.street)
  end

  def test_tokyo_ward
    assert_match(japanese_regex('区'), FFakerTW::AddressJA.tokyo_ward)
  end

  def test_ward
    assert_match(japanese_regex('区'), FFakerTW::AddressJA.ward)
  end

  def test_village
    assert_match(japanese_regex('村'), FFakerTW::AddressJA.village)
  end

  def test_designated_city
    assert_match(japanese_regex('[市区]'), FFakerTW::AddressJA.city)
  end

  def test_city
    assert_match(japanese_regex('市'), FFakerTW::AddressJA.city)
  end

  def test_county
    assert_match(japanese_regex('郡'), FFakerTW::AddressJA.county)
  end

  def test_prefecture
    assert_match(japanese_regex('[都道府県]'), FFakerTW::AddressJA.prefecture)
  end

  def japanese_regex(word)
    /\A(?:\p{Hiragana}|\p{Katakana}|[ー－]|[一-龠々])+#{word}\z/
  end
end
