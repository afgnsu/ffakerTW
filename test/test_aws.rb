# frozen_string_literal: true

require_relative 'helper'

class TestAWS < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::AWS, :instance_type)

  def test_instance_type
    assert_match(/\A[a-z]+\d\.\d*[a-z]+/, FFakerTW::AWS.instance_type)
  end

  def test_offering_type
    assert_match(/\A[ a-zA-Z]+\z/i, FFakerTW::AWS.offering_type)
  end

  def test_instance_tenancy
    assert_match(/\A(?:default|dedicated|host)+\z/i, FFakerTW::AWS.instance_tenancy)
  end

  def test_product_description
    assert_match(%r{\A[ /a-zA-Z()]+\z}i, FFakerTW::AWS.product_description)
  end
end
