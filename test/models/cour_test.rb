require 'test_helper'

class CourTest < ActiveSupport::TestCase

  def setup
    @cour = Cour.new(titre: "Example titre", description: "Example de description")
  end

  test "should be valid" do
    assert @cour.valid?
  end

  test "titre should be present" do
    @cour.titre = "     "
    assert_not @cour.valid?
  end

  test "titre should not be too long" do
    @cour.name = "a" * 51
    assert_not @cour.valid?
  end

  test "titre should be unique" do
    duplicate_cour = @cour.dup
    @cour.save
    assert_not duplicate_cour.valid?
  end

  test "description should be present" do
    @cour.description = "     "
    assert_not @cour.valid?
  end

  test "description should not be too long" do
    @cour.email = "a" * 255
    assert_not @cour.valid?
  end

end
