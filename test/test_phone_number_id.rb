# frozen_string_literal: true

require_relative 'helper'

class TestPhoneNumberID < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::PhoneNumberID,
    :mobile_phone_number,
    :home_phone_number,
    :phone_number
  )

  def setup
    @tester = FFakerTW::PhoneNumberID
  end

  def test_mobile_phone_number
    prefixes = FFakerTW::PhoneNumberID::MOBILE_PHONE_PREFIXES
    regex = /\A(?:#{prefixes.join('|')})-\d{8}\z/
    assert_match regex, FFakerTW::PhoneNumberID.mobile_phone_number
  end

  def test_home_phone_number
    prefixes = FFakerTW::PhoneNumberID::HOME_PHONE_PREFIXES
    regex = /\A(#{prefixes.join('|')})-(\d{7,8})\z/
    assert_match regex, FFakerTW::PhoneNumberID.home_phone_number
  end

  def test_phone_number
    mobile_prefixes = FFakerTW::PhoneNumberID::MOBILE_PHONE_PREFIXES
    home_prefixes = FFakerTW::PhoneNumberID::HOME_PHONE_PREFIXES
    regex = /\A(#{mobile_prefixes.join('|')}|#{home_prefixes.join('|')})-(\d{7,8})\z/
    assert_match regex, FFakerTW::PhoneNumberID.phone_number
  end

  def test_international_mobile_phone_number
    prefixes = FFakerTW::PhoneNumberID::MOBILE_PHONE_PREFIXES.map { |x| x.sub('0', '') }
    regex = /\A\+62(#{prefixes.join('|')})-(\d{8})\z/
    assert_match regex, FFakerTW::PhoneNumberID.international_mobile_phone_number
  end

  def test_international_home_phone_number
    prefixes = FFakerTW::PhoneNumberID::HOME_PHONE_PREFIXES.map { |x| x.sub('0', '') }
    regex = /\A\+62(#{prefixes.join('|')})-(\d{7,8})\z/
    assert_match regex, FFakerTW::PhoneNumberID.international_home_phone_number
  end

  def test_international_phone_number
    mobile_prefixes = FFakerTW::PhoneNumberID::MOBILE_PHONE_PREFIXES.map { |x| x.sub('0', '') }
    home_prefixes = FFakerTW::PhoneNumberID::HOME_PHONE_PREFIXES.map { |x| x.sub('0', '') }
    regex = /\A\+62(#{mobile_prefixes.join('|')}|#{home_prefixes.join('|')})-(\d{7,8})\z/

    assert_match regex, FFakerTW::PhoneNumberID.international_phone_number
  end
end
