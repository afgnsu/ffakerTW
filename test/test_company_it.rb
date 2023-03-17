# frozen_string_literal: true

require_relative 'helper'

class TestCompanyIT < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::CompanyIT,
    :name, :suffix, :prefix, :partita_iva
  )

  def test_name
    assert_match(/[ a-z]+/, FFakerTW::CompanyIT.name)
  end

  def test_suffix
    assert_match(/[ a-z]+/i, FFakerTW::CompanyIT.suffix)
  end

  def test_prefix
    assert_match(/[ a-z]+/i, FFakerTW::CompanyIT.prefix)
  end

  def test_partita_iva
    assert_match(/\d{11}/, FFakerTW::CompanyIT.partita_iva)
  end
end
