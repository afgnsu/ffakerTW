# frozen_string_literal: true

require_relative 'helper'

class TestAddressCHIT < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AddressCHIT, :canton)

  def test_ch_it_canton
    FFakerTW::AddressCHIT::CANTON.each do |canton|
      assert_match(/\A[- a-zàâ]+\z/i, canton)
    end
  end
end
