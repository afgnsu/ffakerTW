# frozen_string_literal: true

require_relative 'helper'

class TestVehicle < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Vehicle,
    :base_color, :drivetrain, :engine_cylinders, :engine_displacement,
    :fuel_type, :interior_upholstery, :make, :manufacturer_color, :mfg_color,
    :model, :transmission_abbr, :transmission, :trim, :vin, :year
  )

  def test_base_color
    assert_match(/\A[a-z]+\z/, FFakerTW::Vehicle.base_color)
  end

  def test_year
    assert_match(/\A\d{4}\z/, FFakerTW::Vehicle.year)
  end

  def test_manufacturer_color
    assert_match(/\A[ a-z]+\z/, FFakerTW::Vehicle.manufacturer_color)
  end

  def test_mfg_color
    assert_match(/\A[ a-z]+\z/, FFakerTW::Vehicle.mfg_color)
  end

  def test_make
    assert_match(/\A[A-Z][- A-Za-z]+\z/, FFakerTW::Vehicle.make)
  end

  def test_model
    assert_match(/\A[-. &a-z0-9]+\z/i, FFakerTW::Vehicle.model)
  end

  def test_trim
    assert_match(/\A[- a-z]+\z/i, FFakerTW::Vehicle.trim)
  end

  def test_vin
    vin = FFakerTW::Vehicle.vin

    assert_match(/\A[A-Z0-9]{17}\z/, vin)
    assert_not_match(/[IOQ]/, vin) # VINs can't have these letters
    assert_includes(FFakerTW::Vehicle::VIN::VALID_ALPHA, vin[6]) # passenger vehicle designator
    assert_includes(FFakerTW::Vehicle::VIN::VALID_YEAR_CHARS, vin[9]) # check year character
  end

  def test_drivetrain
    assert_match(/\A[a-z0-9]+\z/i, FFakerTW::Vehicle.drivetrain)
  end

  def test_transmission
    assert_match(/\A[ a-z0-9]+\z/i, FFakerTW::Vehicle.transmission)
  end

  def test_transmission_abbr
    assert_match(/\A[A-Z]{2,3}\z/, FFakerTW::Vehicle.transmission_abbr)
  end

  def test_engine_cylinders
    assert_match(/\A[a-z0-9]+\z/i, FFakerTW::Vehicle.engine_cylinders)
  end

  def test_engine_displacement
    assert_match(/\A\d{1,2}\.\d\z/, FFakerTW::Vehicle.engine_displacement)
  end

  def test_fuel_type
    assert_match(/\A[ a-z0-9()]+\z/i, FFakerTW::Vehicle.fuel_type)
  end

  def test_interior_upholstery
    assert_match(/\A[ a-z0-9]+\z/i, FFakerTW::Vehicle.interior_upholstery)
  end
end
