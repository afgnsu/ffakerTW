# frozen_string_literal: true

require_relative 'helper'

class TestAddressSn < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressSN,
    :region, :departement, :arrondissement
  )

  def setup
    @subject = FFakerTW::AddressSN
  end

  def test_region
    assert FFakerTW::AddressSN::REGIONS.include?(FFakerTW::AddressSN.region)
  end

  def test_departement
    assert FFakerTW::AddressSN::DEPARTEMENTS.include?(FFakerTW::AddressSN.departement)
  end

  def test_arrondissement
    assert FFakerTW::AddressSN::ARRONDISSEMENTS.include?(FFakerTW::AddressSN.arrondissement)
  end
end
