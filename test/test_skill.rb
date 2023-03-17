# frozen_string_literal: true

require_relative 'helper'

class TestSkill < Test::Unit::TestCase
  include DeterministicHelper

  assert_methods_are_deterministic(
    FFakerTW::Skill,
    :tech_skill, :tech_skills, :specialty, :specialties
  )

  def test_tech_skill
    assert_match(/[a-z]+/i, FFakerTW::Skill.tech_skill)
  end

  def test_tech_skills
    tech_skills = FFakerTW::Skill.tech_skills
    assert_instance_of Array, tech_skills
  end

  def test_specialty
    assert_match(/[ a-z]+/i, FFakerTW::Skill.specialty)
  end

  def test_specialties
    specialties = FFakerTW::Skill.specialties
    assert_instance_of Array, specialties
  end
end
