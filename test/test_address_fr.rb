# frozen_string_literal: true

require_relative 'helper'

class TestAddressFR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::AddressFR,
    :city, :full_address, :street_name, :postal_code, :region
  )
end
