# frozen_string_literal: true

require_relative 'helper'

class TestAnimalsUS < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AnimalUS, :common_name)

  def setup
    @tester = FFakerTW::AnimalUS
  end

  def test_name
    assert_include @tester::COMMON_NAMES, @tester.common_name
  end
end
