# frozen_string_literal: true

require_relative 'helper'

class TestAddressBR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressBR,
    :zip_code, :state, :state_abbr, :city, :street_prefix, :street, :complement, :neighborhood, :full_address
  )

  def test_zip_code
    assert_match(/\d{5}-\d{3}/, FFakerTW::AddressBR.zip_code)
  end

  def test_state
    assert FFakerTW::AddressBR::STATE.include?(FFakerTW::AddressBR.state)
  end

  def test_state_abbr
    assert FFakerTW::AddressBR::STATE_ABBR.include?(FFakerTW::AddressBR.state_abbr)
  end

  def test_city
    assert FFakerTW::AddressBR::CITY.include?(FFakerTW::AddressBR.city)
  end

  def test_street_prefix
    assert FFakerTW::AddressBR::STREET_PREFIX.include?(FFakerTW::AddressBR.street_prefix)
  end

  def test_street
    prefixes = FFakerTW::AddressBR::STREET_PREFIX
    assert_match(/\A(#{prefixes.join('|')})(?: [\p{Alpha}-]+)+\z/, FFakerTW::AddressBR.street)
  end

  def test_complement
    assert_match(/\A(?:Apartamento \d{3}|Casa Térrea|Fundos)\z/, FFakerTW::AddressBR.complement)
  end

  def test_neighborhood
    neighborhood_prefix = FFakerTW::AddressBR.neighborhood.split(' ').first
    assert FFakerTW::AddressBR::NEIGHBORHOOD_PREFIXES.include?(neighborhood_prefix)
  end

  def test_full_address
    assert_match(/\A[\p{Alpha}\d, -]+\z/, FFakerTW::AddressBR.full_address)
  end
end
