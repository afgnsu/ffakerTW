# frozen_string_literal: true

require_relative 'helper'

class YoutubeTest < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Youtube,
    :url, :share_url, :embed_url, :video_id
  )

  def test_url
    assert_match(%r(www\.youtube\.com/watch\?v=\S{11}), FFakerTW::Youtube.url)
  end

  def test_share_url
    assert_match(%r(youtu\.be/\S{11}), FFakerTW::Youtube.share_url)
  end

  def test_embed_url
    assert_match(%r(www\.youtube\.com/embed/\S{11}), FFakerTW::Youtube.embed_url)
  end

  def test_video_id
    assert_match(/\S{11}/, FFakerTW::Youtube.video_id)
  end
end
