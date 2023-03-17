# frozen_string_literal: true

require_relative 'helper'

class TestAddressAU < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressAU,
    :state, :state_abbr, :suburb, :postcode, :full_address
  )

  def test_au_state_abbr_insertion
    FFakerTW::AddressAU::STATE_ABBR.sort
    assert FFakerTW::AddressAU::SUBURB.keys.sort
    assert FFakerTW::AddressAU::POSTCODE.keys.sort
  end

  def test_au_state
    assert_match(/[ a-z]/, FFakerTW::AddressAU.state)
  end

  def test_au_state_abbr
    assert_match(/[A-Z]/, FFakerTW::AddressAU.state_abbr)
  end

  def test_au_suburb
    assert_match(/[a-zA-Z]/, FFakerTW::AddressAU.suburb)
  end

  def test_postcode
    assert_match(/\d{4}/, FFakerTW::AddressAU.postcode)
  end

  def test_full_address
    assert_match(/[, a-z]/, FFakerTW::AddressAU.full_address)
  end

  def test_au_suburb_with_states
    FFakerTW::AddressAU::STATE_ABBR.each do |st_abbr|
      assert_match(/[a-zA-Z]/, FFakerTW::AddressAU.suburb(st_abbr))
      assert_deterministic { FFakerTW::AddressAU.suburb(st_abbr) }
    end
  end

  def test_au_suburb_with_state_and_postcodes
    FFakerTW::AddressAU::STATE_ABBR.each do |st_abbr|
      p_code = FFakerTW::AddressAU.postcode(st_abbr)
      assert_match(/[a-zA-Z]/, FFakerTW::AddressAU.suburb(st_abbr, p_code))
      assert_deterministic { FFakerTW::AddressAU.suburb(st_abbr, p_code) }
    end
  end

  def test_postcode_with_states
    FFakerTW::AddressAU::STATE_ABBR.each do |st_abbr|
      assert_match(/\d{4}/, FFakerTW::AddressAU.postcode(st_abbr))
      assert_deterministic { FFakerTW::AddressAU.postcode(st_abbr) }
    end
  end

  def test_full_address_with_states
    FFakerTW::AddressAU::STATE_ABBR.each do |st_abbr|
      assert_match(/[, a-z]/, FFakerTW::AddressAU.full_address(st_abbr))
      assert_deterministic { FFakerTW::AddressAU.full_address(st_abbr) }
    end
  end

  def test_time_zone
    assert_includes(FFakerTW::AddressAU::TIME_ZONE.values, FFakerTW::AddressAU.time_zone)
  end

  def test_time_zone_with_states
    FFakerTW::AddressAU::STATE_ABBR.each do |st_abbr|
      assert_includes(FFakerTW::AddressAU::TIME_ZONE.values, FFakerTW::AddressAU.time_zone)
      assert_deterministic { FFakerTW::AddressAU.postcode(st_abbr) }
    end
  end
end
