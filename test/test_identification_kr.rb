# frozen_string_literal: true

require_relative 'helper'

class TestFakerIdentificationKr < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::IdentificationKr, :rrn)

  def setup
    @tester = FFakerTW::IdentificationKr
  end

  def test_rrn
    assert_match(/\A\d{6}-\d{7}\z/, @tester.rrn)
  end
end
