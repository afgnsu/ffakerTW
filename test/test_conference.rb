# frozen_string_literal: true

require_relative 'helper'

class TestConference < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Conference, :name)

  def test_name
    assert_match(/1\+|[ a-z]+/i, FFakerTW::Conference.name)
  end
end
