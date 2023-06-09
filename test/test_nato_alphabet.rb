# frozen_string_literal: true

require_relative 'helper'

class TestNato < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::NatoAlphabet,
    :code, :alphabetic_code, :numeric_code, :callsign
  )

  def setup
    @tester = FFakerTW::NatoAlphabet
  end

  def test_code
    assert FFakerTW::NatoAlphabet::CODES.include?(@tester.code)
  end

  def test_letter_code
    assert FFakerTW::NatoAlphabet::ALPHABET_CODES.include?(@tester.alphabetic_code)
  end

  def test_numerify_code
    assert FFakerTW::NatoAlphabet::NUMERIC_CODES.include?(@tester.numeric_code)
  end

  def test_callsign
    assert_match(/[A-Z]+-[A-Z]+-[A-Z]+/, @tester.callsign)
  end

  def test_codify
    assert_match(/[A-Z]+-[A-Z]+-[A-Z]+/, @tester.codify('?-?-?'))
    assert_match(/[A-Z]+-[A-Z]+-[A-Z]+/, @tester.codify('?-#-?'))
    assert_match(FFakerTW::NatoAlphabet::STOP_CODE, @tester.codify('.'))

    assert_deterministic { @tester.codify('?-?-?') }
    assert_deterministic { @tester.codify('?-#-?') }
    assert_deterministic { @tester.codify('.') }
  end
end
