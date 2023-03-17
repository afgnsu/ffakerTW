# frozen_string_literal: true

require_relative 'helper'

class TestFakerIdentificationTW < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::IdentificationTW, :id)

  def setup
    @tester = FFakerTW::IdentificationTW
  end

  def test_id
    assert_match(/\A[A-Z][12]\d{8}\z/, @tester.id)
  end
end
