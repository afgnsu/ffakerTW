# frozen_string_literal: true

require_relative 'helper'

class TestBaconIpsum < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::BaconIpsum,
    :paragraph, :sentence, :paragraphs, :sentences, :words, :word
  )

  def test_paragraph
    assert_match(/1\+|[ a-z]+/i, FFakerTW::BaconIpsum.paragraph)
  end

  def test_sentence
    assert_match(/1\+|[ a-z]+/i, FFakerTW::BaconIpsum.sentence)
  end

  def test_paragraphs
    assert_match(/1\+|[ a-z]+/i, FFakerTW::BaconIpsum.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(/1\+|[ a-z]+/i, FFakerTW::BaconIpsum.sentences.join(' '))
  end

  def test_words
    assert_match(/1\+|[ a-z]+/i, FFakerTW::BaconIpsum.words.join(' '))
  end

  def test_word
    assert_match(/1\+|[a-z]+/i, FFakerTW::BaconIpsum.word)
  end
end
