require('minitest/autorun')
require('minitest/reporters')
require_relative('../codeclan_student')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test
  def setup
  @student1 = Student.new("Ghislain", "E37")
  @student2 = Student.new("Carl", "E36")
  end

def test_get_name

assert_equal("Ghislain", @student1.get_name())
end

def test_get_cohort
assert_equal("E36", @student2.get_cohort())
end

def test_set_new_name
@student2.set_new_name("Steven")
assert_equal("Steven", @student2.get_name())
end

def test_set_new_cohort
  @student2.set_new_cohort("E37")
assert_equal("E37", @student2.get_cohort())
end

def test_can_you_talk
# @student1.can_you_talk#("I can talk")
assert_equal("I can talk", @student1.talk())
end

def test_favorite_language
fav_lang =  @student1.favorite_language("Ruby")
  assert_equal("I love Ruby", fav_lang)
end








end
