# frozen_string_literal: true

require_relative 'helper'

class TestCompanyFR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::CompanyFR,
    :name, :suffix, :siren, :siret
  )

  def test_name
    assert_match(/[ a-z]+/, FFakerTW::CompanyFR.name)
  end

  def test_suffix
    assert_match(/[ a-z]+/i, FFakerTW::CompanyFR.suffix)
  end

  def test_french_siren_number
    siren = FFakerTW::CompanyFR.siren
    assert(siren.match(/\A\d{9}\z/))
    assert(siren[8] == FFakerTW::CompanyFR.send(:luhn_check, siren[0..-2]).to_s)
  end

  def test_french_siret_number
    siret = FFakerTW::CompanyFR.siret
    assert(siret.match(/\A\d{14}\z/))
    assert(siret[8] == FFakerTW::CompanyFR.send(:luhn_check, siret[0..7]).to_s)
    assert(siret[13] == FFakerTW::CompanyFR.send(:luhn_check, siret[0..-2]).to_s)
  end
end
