# frozen_string_literal: true

require_relative 'helper'

class TestLoremARAR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::LoremAR,
    :paragraph, :paragraphs, :sentence, :sentences, :phrase, :phrases, :word, :words
  )

  def test_paragraph
    assert_match(/[ a-z]+/, FFakerTW::LoremAR.paragraph)
  end

  def test_sentence
    assert_match(/[ a-z]+/, FFakerTW::LoremAR.sentence)
  end

  def test_phrase
    assert_match(/[ a-z]+/, FFakerTW::LoremAR.phrase)
  end

  def test_paragraphs
    assert_match(/[^a-zA-Z0-9]+/, FFakerTW::LoremAR.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(/[^a-zA-Z0-9]+/, FFakerTW::LoremAR.sentences.join(' '))
  end

  def test_phrases
    assert_match(/[^a-zA-Z0-9]+/, FFakerTW::LoremAR.phrases.join(' '))
  end

  def test_words
    assert_match(/[^a-zA-Z0-9]+/, FFakerTW::LoremAR.words.join(' '))
  end

  def test_word
    assert_match(/[^a-zA-Z0-9]+/, FFakerTW::LoremAR.word)
  end
end
