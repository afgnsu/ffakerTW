# frozen_string_literal: true

require_relative 'helper'

class TestPhoneNumber < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::PhoneNumber,
    :phone_number, :area_code, :exchange_code, :short_phone_number,
    :phone_calling_code, :imei
  )

  def test_phone_number
    assert_match(/\d{3}[. -]\d{3}/, FFakerTW::PhoneNumber.phone_number)
  end

  def test_area_code
    assert_not_match(/\A\d11\z/, FFakerTW::PhoneNumber.area_code.to_s)
    assert_match(/\A\d{3}\z/, FFakerTW::PhoneNumber.area_code.to_s)
  end

  def test_exchange_code
    assert_not_match(/\A\d11\z/, FFakerTW::PhoneNumber.exchange_code.to_s)
    assert_match(/\A\d{3}\z/, FFakerTW::PhoneNumber.exchange_code.to_s)
  end

  def test_short_phone_number
    assert_match(/\A\d{3}-\d{3}-\d{4}\z/, FFakerTW::PhoneNumber.short_phone_number)
  end

  def test_phone_calling_code
    assert_match(/\A\+\d+\z/, FFakerTW::PhoneNumber.phone_calling_code)
  end

  def test_imei
    assert_match(/\A\d{15}\z/, FFakerTW::PhoneNumber.imei)
  end

  def test_imei_with_sn
    sn = rand(0...1_000_000)
    assert_match(/\A\d{8}#{format('%06d', sn)}\d{1}\z/,
                 FFakerTW::PhoneNumber.imei(sn))
    assert_deterministic { FFakerTW::PhoneNumber.imei(sn) }
  end
end
