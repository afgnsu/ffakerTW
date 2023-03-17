# frozen_string_literal: true

require_relative 'helper'

class TestFakerGenderBR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::GenderBR, :random)

  def setup
    @tester = FFakerTW::GenderBR
  end

  def test_random
    gender_regex = /\A(feminino|masculino)\z/
    assert_match(gender_regex, @tester.random)
  end
end
