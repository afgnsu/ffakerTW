# frozen_string_literal: true

require_relative 'helper'

class TestTweet < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Tweet,
    :tags, :mention, :body, :tweet
  )

  def test_2_tags
    assert_match(/\#\S*\s\#\S*/, FFakerTW::Tweet.tags)
  end

  def test_3_tags
    assert_match(/\#\S*\s\#\S*\s\#\S*/, FFakerTW::Tweet.tags(3))
    assert_deterministic { FFakerTW::Tweet.tags(3) }
  end

  def test_mention
    assert_match(/@\S*/, FFakerTW::Tweet.mention)
  end

  def test_mentions_three
    assert_match(/@\S*\s@\S*\s@\S*/, FFakerTW::Tweet.mentions(3))
    assert_deterministic { FFakerTW::Tweet.mentions(3) }
  end

  def test_body
    assert_less_than_or_equal_to FFakerTW::Tweet.body.size, 140
  end

  def test_shortish_body
    assert_less_than_or_equal_to FFakerTW::Tweet.body(20).size, 20
  end

  def test_short_body
    assert_between(FFakerTW::Tweet.body(2).size, 2..20)
  end

  def test_tweet
    assert_random_less_than_or_equal_to(140) { FFakerTW::Tweet.tweet.size }
  end

  def test_tweet_with_reply
    assert_match(/^@/, FFakerTW::Tweet.tweet(reply: true))
    assert_deterministic { FFakerTW::Tweet.tweet(reply: true) }
  end

  def test_oversize_body_length
    assert_less_than_or_equal_to FFakerTW::Tweet.tweet(body_length: 200).size, 140
  end

  def test_undersize_body_length
    assert_less_than_or_equal_to FFakerTW::Tweet.tweet(body_length: 2).size, 140
  end
end
