# frozen_string_literal: true

require_relative 'helper'

class TestAddress < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Address,
    :building_number, :city, :city_prefix, :city_suffix, :secondary_address,
    :street_address, :street_name, :street_suffix, :neighborhood,
    :country, :country_code, :time_zone
  )

  assert_methods_are_deterministic(
    FFakerTW::AddressUS,
    :state, :state_abbr, :zip_code
  )

  def test_building_number
    assert_match(/\A\d{3,5}\z/, FFakerTW::Address.building_number)
  end

  def test_city
    assert_match(/[ a-z]+/, FFakerTW::Address.city)
  end

  def test_city_prefix
    assert_match(/[ a-z]/, FFakerTW::Address.city_prefix)
  end

  def test_city_suffix
    assert_match(/[ a-z]/, FFakerTW::Address.city_suffix)
  end

  def test_secondary_address
    assert_match(/[ a-z]/, FFakerTW::Address.secondary_address)
  end

  def test_street_address
    assert_match(/[ a-z]/, FFakerTW::Address.street_address)
  end

  def test_street_name
    assert_match(/[ a-z]/, FFakerTW::Address.street_name)
  end

  def test_street_suffix
    assert_match(/[ a-z]/, FFakerTW::Address.street_suffix)
  end

  def test_uk_country
    assert_match(/[ a-z]/, FFakerTW::AddressUK.country)
    assert_deterministic { FFakerTW::AddressUK.country }
  end

  def test_uk_county
    assert_match(/[ a-z]/, FFakerTW::AddressUK.county)
    assert_deterministic { FFakerTW::AddressUK.county }
  end

  def test_uk_postcode
    assert_match(/[ a-z]/, FFakerTW::AddressUK.postcode)
    assert_deterministic { FFakerTW::AddressUK.postcode }
  end

  def test_us_state
    assert_match(/[ a-z]/, FFakerTW::AddressUS.state)
  end

  def test_us_state_abbr
    assert_match(/[A-Z]/, FFakerTW::AddressUS.state_abbr)
  end

  def test_zip_code
    assert_match(/[0-9]/, FFakerTW::AddressUS.zip_code)
  end

  def test_zip_code_frozen
    assert FFakerTW::AddressUS.zip_code.frozen? == false
  end

  def test_neighborhood
    assert_match(/[ a-z]+/, FFakerTW::Address.neighborhood)
  end

  def test_country
    assert_match(/[ a-z]+/, FFakerTW::Address.country)
  end

  def test_country_by_county_code
    assert_match('Ukraine', FFakerTW::Address.country('UA'))
    assert_deterministic { FFakerTW::Address.country('UA') }
  end

  def test_country_code
    assert_match(/[A-Z]{2}/, FFakerTW::Address.country_code)
  end

  def test_country_code_of_particular_country
    assert_match('UA', FFakerTW::Address.country_code('Ukraine'))
    assert_match(/[A-Z]{2}/, FFakerTW::Address.country_code('Foo'))
    assert_deterministic { FFakerTW::Address.country_code('Ukraine') }
  end

  def test_time_zone
    assert_include FFakerTW::Address::TIME_ZONE, FFakerTW::Address.time_zone
  end
end
