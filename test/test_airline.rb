# frozen_string_literal: true

require_relative 'helper'

class TestAirline < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Airline, :name, :flight_number)

  def test_name
    assert_match(/\A.+\z/, FFakerTW::Airline.name)
  end

  def test_flight_number
    assert_match(/\w{2,3} \d{1,4}\z/, FFakerTW::Airline.flight_number)
  end
end
