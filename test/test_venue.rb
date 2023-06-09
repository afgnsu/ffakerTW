# frozen_string_literal: true

require_relative 'helper'

class TestVenue < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Venue, :name)

  def test_name
    assert_match(/\A[., a-z]+\z/i, FFakerTW::Venue.name)
  end
end
