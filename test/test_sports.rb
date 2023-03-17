# frozen_string_literal: true

require_relative 'helper'

class TestSports < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Sport, :name)

  def setup
    @tester = FFakerTW::Sport
  end

  def test_name
    assert_include @tester::NAMES, @tester.name
  end
end
