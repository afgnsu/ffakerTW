# frozen_string_literal: true

require_relative 'helper'

class TestBoolean < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Boolean, :maybe)

  def test_maybe
    maybe = FFakerTW::Boolean.maybe
    assert [true, false].include?(maybe)
  end
end
