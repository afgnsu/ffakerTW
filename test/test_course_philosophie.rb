# frozen_string_literal: true

require_relative 'helper'

class TestCoursePhilosophie < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(FFakerTW::CoursesFR::Philosophie, :lesson)

  def setup
    @subject = FFakerTW::CoursesFR::Philosophie
  end

  def test_lesson
    assert @subject::LESSONS.include?(@subject.lesson)
  end
end
