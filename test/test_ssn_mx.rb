# frozen_string_literal: true

require_relative 'helper'

class TestSSNMX < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::SSNMX,
    :ssn, :ssn_undashed, :imss, :imss_undashed, :issste, :issste_undashed
  )

  def test_ssn
    assert_match(/\d{10}-\d/, FFakerTW::SSNMX.ssn)
  end

  def test_ssn_undashed
    assert_match(/\d{11}/, FFakerTW::SSNMX.ssn_undashed)
  end

  def test_imss
    assert_match(/\d{10}-\d/, FFakerTW::SSNMX.imss)
  end

  def test_imss_undashed
    assert_match(/\d{11}/, FFakerTW::SSNMX.imss_undashed)
  end

  def test_issste
    assert_match(/\d{10}-\d/, FFakerTW::SSNMX.issste)
  end

  def test_issste_undashed
    assert_match(/\d{11}/, FFakerTW::SSNMX.issste_undashed)
  end
end
