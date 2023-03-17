# frozen_string_literal: true

require_relative 'helper'

class TestIdentificationIN < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::IdentificationIN,
    :aadhaar
  )

  def setup
    @tester = FFakerTW::IdentificationIN
  end

  def test_aadhaar
    assert_match(/\A\d{12}\z/, @tester.aadhaar)
  end
end
