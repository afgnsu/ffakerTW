# frozen_string_literal: true

require_relative 'helper'

class TestMovie < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::Movie, :title, :rating)

  def setup
    @tester = FFakerTW::Movie
  end

  def test_title
    assert_match(/[ a-z]+/, FFakerTW::Movie.title)
  end

  def test_rating
    assert FFakerTW::Movie::RATINGS.include? @tester.rating
  end
end
