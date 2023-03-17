# frozen_string_literal: true

require_relative 'helper'

class TestCode < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Code, :ean, :npi)

  def test_npi_legacy_regexp
    assert FFakerTW::Code.npi(legacy: true).match(/\A(1|2)[0-9]{9}\z/)
  end

  def test_npi
    FFakerTW::Random.seed = 523_456_789
    assert FFakerTW::Code.npi == '7411850515'
  end

  def test_deterministic_npi
    FFakerTW::Random.seed = 42
    v = FFakerTW::Code.npi
    FFakerTW::Random.reset!
    assert v == FFakerTW::Code.npi
  end

  def test_valid_npi
    FFakerTW::Random.seed = 123_456_789
    assert FFakerTW::Code.npi == '2410167607'
  end

  def test_ean
    assert FFakerTW::Code.ean.match(/^\d{13}$/)
  end

  def test_ean_deterministic
    FFakerTW::Random.seed = 10
    assert_equal FFakerTW::Code.ean, '1399378750693'
  end
end
