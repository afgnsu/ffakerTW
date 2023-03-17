# frozen_string_literal: true

require_relative 'helper'

class TestAddressID < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressID,
    :zip_code, :state, :state_abbr, :city, :street_prefix, :street
  )

  def test_zip_code
    assert_match(/\A\d{5}\z/, FFakerTW::AddressID.zip_code)
  end

  def test_state
    assert FFakerTW::AddressID::STATE.include?(FFakerTW::AddressID.state)
  end

  def test_state_abbr
    assert FFakerTW::AddressID::STATE_ABBR.include?(FFakerTW::AddressID.state_abbr)
  end

  def test_city
    assert_include FFakerTW::AddressID::CITY, FFakerTW::AddressID.city
  end

  def test_street_prefix
    assert FFakerTW::AddressID::STREET_PREFIX.include?(FFakerTW::AddressID.street_prefix)
  end

  def test_street
    prefixes = FFakerTW::AddressID::STREET_PREFIX
    common_street_names = FFakerTW::AddressID::COMMON_STREET_NAMES
    regex = /\A(#{prefixes.join('|')})\.(\s(#{common_street_names.join('|')})),\sNo\.\s\d+\z/
    assert_match(regex, FFakerTW::AddressID.street)
  end
end
