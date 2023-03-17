# frozen_string_literal: true

require_relative 'helper'

class TestFakerFood < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Food,
    :vegetable, :fruit, :meat, :herb_or_spice
  )

  def test_vegetable
    assert_match(%r{\A[-/ íó'a-z0-9]+\z}i, FFakerTW::Food.vegetable)
  end

  def test_fruit
    assert_match(/\A[ a-z0-9]+\z/i, FFakerTW::Food.fruit)
  end

  def test_meat
    assert_match(/\A[, a-z0-9]+\z/i, FFakerTW::Food.meat)
  end

  def test_herb_or_spice
    assert_match(/\A[-, a-z0-9]+\z/i, FFakerTW::Food.herb_or_spice)
  end
end
