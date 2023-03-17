# frozen_string_literal: true

require_relative 'helper'

class TestAnimals < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Animal, :common_name)

  def setup
    @tester = FFakerTW::Animal
  end

  def test_name
    assert_include @tester::COMMON_NAMES, @tester.common_name
  end
end
