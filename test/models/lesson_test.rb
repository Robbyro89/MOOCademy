require 'test_helper'

class LessonTest < ActiveSupport::TestCase

  def setup
    @lesson = Lesson.new(titre: "Example titre", body: "Example body")
  end

  test "should be valid" do
    assert @lesson.valid?
  end

  test "titre should be present" do
    @lesson.titre = "     "
    assert_not @lesson.valid?
  end

  test "titre should not be too long" do
    @lesson.name = "a" * 51
    assert_not @lesson.valid?
  end

  test "titre should be unique" do
    duplicate_cour = @lesson.dup
    @lesson.save
    assert_not duplicate_lesson.valid?
  end

  test "body should be present" do
    @lesson.body = "     "
    assert_not @lesson.valid?
  end

  test "body should not be too long" do
    @lesson.email = "a" * 255
    assert_not @lesson.valid?
  end
end
