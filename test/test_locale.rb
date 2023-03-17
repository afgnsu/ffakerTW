# frozen_string_literal: true

require_relative 'helper'

class TestLocale < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Locale, :code, :language)

  def test_code
    assert_match(/./, FFakerTW::Locale.code)
  end

  def test_language
    assert_match(/./, FFakerTW::Locale.language)
  end

  def test_language_with_args
    assert_match('French', FFakerTW::Locale.language('FR'))
    assert_deterministic { FFakerTW::Locale.language('FR') }
  end

  def test_code_with_args
    assert_match('FR', FFakerTW::Locale.code('French'))
    assert_deterministic { FFakerTW::Locale.code('French') }
  end
end
