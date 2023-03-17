# frozen_string_literal: true

require_relative 'helper'

class TestAddressCHFR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AddressCHFR, :canton)

  def test_ch_fr_canton
    assert_match(/\A[- a-zàâäèéêëîïôœùûüÿç]+\z/i, FFakerTW::AddressCHFR.canton)
  end
end
