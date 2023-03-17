# frozen_string_literal: true

require_relative 'helper'

class TestFakerJobIT < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::JobIT, :title)

  def setup
    @tester = FFakerTW::JobIT
  end

  def test_title
    assert_match(/\A(\w+\.? ?){2,3}\z/, @tester.title)
  end
end
