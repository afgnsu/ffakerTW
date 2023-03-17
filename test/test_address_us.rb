# frozen_string_literal: true

require_relative 'helper'

class TestAddressUSUS < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressUS,
    :continental_state_abbr, :continental_state,
    :state_abbr, :state_and_territories_abbr, :state,
    :zip_code
  )

  def test_us_state
    assert_match(/[ a-z]/, FFakerTW::AddressUS.state)
  end

  def test_us_state_abbr
    assert_match(/[A-Z]/, FFakerTW::AddressUS.state_abbr)
    %w[California california CALIFORNIA].each do |state|
      assert_match('CA', FFakerTW::AddressUS.state_abbr(state))
    end
    ['South Carolina', 'south carolina'].each do |state|
      assert_match('SC', FFakerTW::AddressUS.state_abbr(state))
    end
    assert_raise ArgumentError, "Unexpected state: 'unknown'" do
      FFakerTW::AddressUS.state_abbr('unknown')
    end
  end

  def test_us_state_and_territories_abbr
    assert_match(/[A-Z]/, FFakerTW::AddressUS.state_and_territories_abbr)
  end

  def test_us_continental_state
    assert_match(/[ a-z]/, FFakerTW::AddressUS.continental_state)
  end

  def test_us_continental_state_abbr
    assert_match(/[A-Z]/, FFakerTW::AddressUS.continental_state_abbr)
  end

  def test_zip_code
    assert_match(/[0-9]/, FFakerTW::AddressUS.zip_code)
  end

  def test_zip_code_frozen
    assert FFakerTW::AddressUS.zip_code.frozen? == false
  end
end
