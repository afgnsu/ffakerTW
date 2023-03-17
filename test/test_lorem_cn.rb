# frozen_string_literal: true

require_relative 'helper'

class TestLoremCN < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::LoremCN,
    :paragraph, :paragraphs, :sentence, :sentences, :word, :words
  )

  def test_paragraph
    assert_greater_than_or_equal_to FFakerTW::LoremCN.paragraph.length, 3 * 4 * 2
  end

  def test_sentence
    assert_greater_than_or_equal_to FFakerTW::LoremCN.sentence.length, 4 * 2
  end

  def test_paragraphs
    assert_greater_than_or_equal_to FFakerTW::LoremCN.paragraphs.length, 2
  end

  def test_paragraphs_is_not_a_string_representation_of_an_array
    assert !/[\[\]]+/.match([FFakerTW::LoremCN.paragraphs].flatten.join(' '))
  end

  def test_paragraphs_is_an_array
    assert FFakerTW::LoremCN.paragraphs.class == Array
  end

  def test_sentences
    assert_greater_than_or_equal_to FFakerTW::LoremCN.sentences.length, 2
  end

  def test_sentences_is_an_array
    assert FFakerTW::LoremCN.sentences.class == Array
  end

  def test_sentences_via_to_s_produces_string_terminated_with_period
    string = FFakerTW::LoremCN.sentences.to_s
    assert string.class == String
    assert string =~ /。$/
  end

  def test_words
    assert_greater_than_or_equal_to FFakerTW::LoremCN.words.length, 2
  end

  def test_word
    assert_greater_than_or_equal_to FFakerTW::LoremCN.word.length, 1
  end
end
