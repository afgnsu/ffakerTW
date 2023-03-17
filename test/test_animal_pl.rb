# frozen_string_literal: true

require_relative 'helper'

class TestAnimalsPL < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AnimalPL, :common_name)

  def setup
    @tester = FFakerTW::AnimalPL
  end

  def test_name
    assert_include(@tester::COMMON_NAMES, @tester.common_name)
  end
end
