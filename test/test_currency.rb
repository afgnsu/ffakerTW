# frozen_string_literal: true

require_relative 'helper'

class TestCurrency < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Currency,
    :code, :name, :symbol
  )
end
