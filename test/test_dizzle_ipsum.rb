# frozen_string_literal: true

require_relative 'helper'

class TestDizzleIpsum < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::DizzleIpsum,
    :paragraph, :sentence, :paragraphs, :sentences, :words, :word
  )

  def test_paragraph
    assert_match(/1\+|[ a-z]+/i, FFakerTW::DizzleIpsum.paragraph)
  end

  def test_sentence
    assert_match(/1\+|[ a-z]+/i, FFakerTW::DizzleIpsum.sentence)
  end

  def test_paragraphs
    assert_match(/1\+|[ a-z]+/i, FFakerTW::DizzleIpsum.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(/1\+|[ a-z]+/i, FFakerTW::DizzleIpsum.sentences.join(' '))
  end

  def test_words
    assert_match(/1\+|[ a-z]+/i, FFakerTW::DizzleIpsum.words.join(' '))
  end

  def test_word
    assert_match(/1\+|[a-z]+/i, FFakerTW::DizzleIpsum.word)
  end
end
