# frozen_string_literal: true

require_relative 'helper'

class TestFakerGenderKR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::GenderKR, :random)

  def setup
    @tester = FFakerTW::GenderKR
  end

  def test_random
    gender_regex = /\A[남녀]\z/
    assert_match(gender_regex, @tester.random)
  end

  def test_sample
    gender_regex = /\A[남녀]\z/
    assert_match(gender_regex, @tester.sample)
  end

  def test_maybe
    gender_regex = /\A[남녀]\z/
    assert_match(gender_regex, @tester.maybe)
  end
end
