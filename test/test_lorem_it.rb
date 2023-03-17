# frozen_string_literal: true

require_relative 'helper'

class TestLoremIT < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::LoremIT,
    :paragraph, :sentence, :phrase, :paragraphs, :sentences, :phrases, :words, :word
  )

  def test_paragraph
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.paragraph)
  end

  def test_sentence
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.sentence)
    assert_nothing_thrown do
      100.times { FFakerTW::LoremIT.sentence 0 }
    end
  end

  def test_phrase
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.phrase)
  end

  def test_paragraphs
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.sentences.join(' '))
  end

  def test_phrases
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.phrases.join(' '))
  end

  def test_words
    assert_match(/[ a-z]+/, FFakerTW::LoremIT.words.join(' '))
  end

  def test_word
    assert_match(/[a-z]+/, FFakerTW::LoremIT.word)
  end

  def test_word_collection_uniqueness
    assert_equal(FFakerTW::LoremIT::WORDS, FFakerTW::LoremIT::WORDS.uniq)
  end
end
