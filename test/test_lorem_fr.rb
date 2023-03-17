# frozen_string_literal: true

require_relative 'helper'

class TestLoremFR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::LoremFR,
    :paragraph, :paragraphs, :sentence, :sentences, :phrase, :phrases, :word, :words
  )

  REGEX = /\A[ -.ÀÂÉÈÊÎÔÚÛàâéèêîôùûa-z]+\z/i.freeze
  REGEX_WORD = /\A[-ÀÂÉÈÊÎÔÚÛàâéèêîôùûa-z]+\z/i.freeze
  REGEX_WORDS = /\A[ -ÀÂÉÈÊÎÔÚÛàâéèêîôùûa-z]+\z/i.freeze

  def test_paragraph
    assert_match(REGEX, FFakerTW::LoremFR.paragraph)
  end

  def test_sentence
    assert_match(REGEX, FFakerTW::LoremFR.sentence)
  end

  def test_phrase
    assert_match(REGEX, FFakerTW::LoremFR.phrase)
  end

  def test_paragraphs
    assert_match(REGEX, FFakerTW::LoremFR.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(REGEX, FFakerTW::LoremFR.sentences.join(' '))
  end

  def test_phrases
    assert_match(REGEX, FFakerTW::LoremFR.phrases.join(' '))
  end

  def test_words
    assert_match(REGEX_WORDS, FFakerTW::LoremFR.words.join(' '))
  end

  def test_word
    assert_match(REGEX_WORD, FFakerTW::LoremFR.word)
  end
end
