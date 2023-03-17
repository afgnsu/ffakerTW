# frozen_string_literal: true

require_relative 'helper'

class TestCompanyCN < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::CompanyCN,
    :name, :suffix, :type
  )

  def test_name
    assert_match(/.{4,}公司\z/, FFakerTW::CompanyCN.name)
  end

  def test_suffix
    assert_match(/公司\z/i, FFakerTW::CompanyCN.suffix)
  end

  def test_type
    assert_match(/.{2,}/i, FFakerTW::CompanyCN.type)
  end
end
