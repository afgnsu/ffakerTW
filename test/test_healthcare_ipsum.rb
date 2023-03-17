# frozen_string_literal: true

require_relative 'helper'

class TestHealthcareIpsum < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::HealthcareIpsum,
    :paragraph, :paragraphs, :sentence, :sentences, :word, :words
  )

  def test_paragraph
    assert_match(/1\+|[ a-z]+/i, FFakerTW::HealthcareIpsum.paragraph)
  end

  def test_sentence
    assert_match(/1\+|[ a-z]+/i, FFakerTW::HealthcareIpsum.sentence)
  end

  def test_paragraphs
    assert_match(/1\+|[ a-z]+/i, FFakerTW::HealthcareIpsum.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(/1\+|[ a-z]+/i, FFakerTW::HealthcareIpsum.sentences.join(' '))
  end

  def test_words
    assert_match(/1\+|[ a-z]+/i, FFakerTW::HealthcareIpsum.words.join(' '))
  end

  def test_word
    assert_match(/1\+|[a-z]+/i, FFakerTW::HealthcareIpsum.word)
  end
end
