# frozen_string_literal: true

require_relative 'helper'

class TestSportUS < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::SportUS, :name)

  def setup
    @tester = FFakerTW::SportUS
  end

  def test_name
    assert_include @tester::NAMES, @tester.name
  end
end
