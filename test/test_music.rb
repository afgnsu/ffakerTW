# frozen_string_literal: true

require_relative 'helper'

class TestMusic < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Music,
    :genre, :album, :artist, :song
  )

  def test_genre
    assert_match(%r{[A-z]|\W|&/+}, FFakerTW::Music.genre)
  end

  def test_album
    assert_match(/\s|[A-z]|\W|\d|'|\?+/, FFakerTW::Music.album)
  end

  def test_artist
    assert_match(/\s|[A-z]|\W|\d|'|\?|&|\+|\.|-+/, FFakerTW::Music.artist)
  end

  def test_song
    assert_match(/\s|[A-z]|\W|\d|'|\?|&|\+|\.|-+/, FFakerTW::Music.song)
  end
end
