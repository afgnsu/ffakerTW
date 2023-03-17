# frozen_string_literal: true

require_relative 'helper'

class TestHipsterIpsum < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::HipsterIpsum,
    :paragraph, :paragraphs, :sentence, :sentences, :word, :words
  )

  TEST_REGEX = /\+1|[ a-z]+/i.freeze

  def test_paragraph
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.paragraph)
  end

  def test_sentence
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.sentence)
  end

  def test_paragraphs
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.sentences.join(' '))
  end

  def test_words
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.words.join(' '))
  end

  def test_word
    assert_match(TEST_REGEX, FFakerTW::HipsterIpsum.word)
  end
end
