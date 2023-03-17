# frozen_string_literal: true

require_relative 'helper'

class TestFFakerTW < Test::Unit::TestCase
  include DeterministicHelper

  def test_version
    assert FFakerTW::VERSION.is_a?(String)
  end

  def test_numerify
    assert FFakerTW.numerify('###').match(/\d{3}/)
    assert_deterministic { FFakerTW.numerify('###') }
  end

  def test_numerify_with_array
    assert FFakerTW.numerify(['###', '###']).match(/\d{3}/)
    assert_deterministic { FFakerTW.numerify(['###', '###']) }
  end

  def test_letterify
    assert FFakerTW.letterify('???').match(/[a-z]{3}/)
    assert_deterministic { FFakerTW.letterify('???') }
  end

  def test_letterify_with_array
    assert FFakerTW.letterify(['???', '???']).match(/[a-z]{3}/)
    assert_deterministic { FFakerTW.letterify(['???', '???']) }
  end

  def test_bothify
    assert FFakerTW.bothify('???###').match(/[a-z]{3}\d{3}/)
    assert_deterministic { FFakerTW.bothify('???###') }
  end

  def test_bothify_with_array
    assert FFakerTW.bothify(['???###', '???###']).match(/[a-z]{3}\d{3}/)
    assert_deterministic { FFakerTW.bothify(['???###', '???###']) }
  end
end
