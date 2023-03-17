# frozen_string_literal: true

require_relative 'helper'

class TestCourseMathematiques < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::CoursesFR::Mathematiques, :lesson)

  def setup
    @subject = FFakerTW::CoursesFR::Mathematiques
  end

  def test_lesson
    assert @subject::LESSONS.include?(@subject.lesson)
  end
end
