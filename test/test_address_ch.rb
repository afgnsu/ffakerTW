# frozen_string_literal: true

require_relative 'helper'

class TestAddressCHCH < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AddressCH, :canton_abbr, :postal_code)

  def test_ch_canton_abbr
    assert_match(/\A[A-Z]{2}\z/, FFakerTW::AddressCH.canton_abbr)
  end

  def test_postal_code
    assert_match(/\A\d{4}\z/, FFakerTW::AddressCH.postal_code)
  end
end
