# frozen_string_literal: true

require_relative 'helper'

class TestFakerJobBR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::JobBR, :title)

  def setup
    @tester = FFakerTW::JobBR
  end

  def test_title
    assert_includes @tester::JOB_NOUNS, @tester.title
  end
end
