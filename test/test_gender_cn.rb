# frozen_string_literal: true

require_relative 'helper'

class TestFakerGenderCN < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::GenderCN, :random)

  def setup
    @tester = FFakerTW::GenderCN
  end

  def test_random
    gender_regex = /\A[男女]\z/
    assert_match(gender_regex, @tester.random)
  end
end
