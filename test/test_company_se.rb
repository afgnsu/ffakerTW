# frozen_string_literal: true

require_relative 'helper'

class TestCompanySE < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::CompanySE,
    :name, :suffix
  )

  def test_name
    assert_match(/[ a-z]+/, FFakerTW::CompanySE.name)
  end

  def test_suffix
    assert_match(/[ a-z]+/i, FFakerTW::CompanySE.suffix)
  end
end
