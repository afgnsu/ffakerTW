# frozen_string_literal: true

require_relative 'helper'

class TestFakerIdentificationESCL < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::IdentificationESCL, :rut)

  def setup
    @tester = FFakerTW::IdentificationESCL
  end

  def test_rut
    assert_match(/\b\d{7,8}-[k|0-9]/i, @tester.rut)
  end
end
