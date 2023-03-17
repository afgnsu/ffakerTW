# frozen_string_literal: true

require_relative 'helper'

class TestPhoneNumberDE < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::PhoneNumberDE,
    :mobile_prefix, :region_prefix, :mobile_phone_number, :home_work_phone_number,
    :country_code, :international_mobile_phone_number, :international_home_work_phone_number
  )

  def setup
    @tester = FFakerTW::PhoneNumberDE
  end

  def test_mobile_prefix
    assert_match(/^01[567]{1}[0-9]{1}$/, FFakerTW::PhoneNumberDE.mobile_prefix)
  end

  def test_mobile_prefix_without_leading_zero
    assert_match(/^1[567]{1}[0-9]{1}$/, FFakerTW::PhoneNumberDE.mobile_prefix(false))
  end

  def test_region_prefix
    assert_match(/^0[2-9]{1}[0-9]{1,3}$/, FFakerTW::PhoneNumberDE.region_prefix)
  end

  def test_region_prefix_without_leading_zero
    assert_match(/^[2-9]{1}[0-9]{1,3}$/, FFakerTW::PhoneNumberDE.region_prefix(false))
  end

  def test_mobile_phone_number
    assert_match(/^01[567]{1}[0-9]{1} [0-9]{7}$/, FFakerTW::PhoneNumberDE.mobile_phone_number)
  end

  def test_home_work_phone_number
    assert_match(/^0[2-9]{1}[0-9]{1,3} [0-9]{7}$/, FFakerTW::PhoneNumberDE.home_work_phone_number)
  end

  def test_country_code
    assert_match('+49', FFakerTW::PhoneNumberDE.country_code)
  end

  def test_international_mobile_phone_number
    assert_match(/^\+49 1[567]{1}[0-9]{1} [0-9]{7}$/, FFakerTW::PhoneNumberDE.international_mobile_phone_number)
  end

  def test_international_home_work_phone_number
    assert_match(/^\+49 [2-9]{1}[0-9]{1,3} [0-9]{7}$/, FFakerTW::PhoneNumberDE.international_home_work_phone_number)
  end
end
