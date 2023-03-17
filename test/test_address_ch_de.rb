# frozen_string_literal: true

require_relative 'helper'

class TestAddressCHDE < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AddressCHDE, :canton)

  def test_ch_de_canton
    assert_match(/\A[-. a-zæøåü]+\z/i, FFakerTW::AddressCHDE.canton)
  end
end
