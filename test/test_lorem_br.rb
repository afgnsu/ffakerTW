# frozen_string_literal: true

require_relative 'helper'

class TestLoremBR < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::LoremBR,
    :paragraph, :sentence, :phrase, :paragraphs, :sentences, :phrases, :words, :word, :characters
  )

  CHARACTERS = /\A[A-zÀ-ü0-9]+\z/i 
  WORD = /\A[A-zÀ-ü-]+\z/i
  WORDS = /[ A-zÀ-ü-.]+/i

  def test_paragraph
    assert_match(WORDS, FFakerTW::LoremBR.paragraph)
  end

  def test_sentence
    assert_match(WORDS, FFakerTW::LoremBR.sentence)
    assert_nothing_thrown do
      100.times { FFakerTW::LoremBR.sentence 0 }
    end
  end

  def test_phrase
    assert_match(WORDS, FFakerTW::LoremBR.phrase)
  end

  def test_paragraphs
    assert_match(WORDS, FFakerTW::LoremBR.paragraphs.join(' '))
  end

  def test_sentences
    assert_match(WORDS, FFakerTW::LoremBR.sentences.join(' '))
  end

  def test_phrases
    assert_match(WORDS, FFakerTW::LoremBR.phrases.join(' '))
  end

  def test_words
    assert_match(WORDS, FFakerTW::LoremBR.words.join(' '))
  end

  def test_word
    assert_match(WORD, FFakerTW::LoremBR.word)
  end

  def test_characters
    assert_match(CHARACTERS, FFakerTW::LoremBR.characters)
    assert FFakerTW::LoremBR.characters.length == 255
    assert FFakerTW::LoremBR.characters(10).length == 10
    assert FFakerTW::LoremBR.characters(-1) == ''
  end

  def test_word_collection_uniqueness
    assert_equal(FFakerTW::Lorem::WORDS, FFakerTW::Lorem::WORDS.uniq)
  end
end
