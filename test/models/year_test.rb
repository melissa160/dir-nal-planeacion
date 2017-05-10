require 'test_helper'

class YearTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save year without year' do
    year = Year.new
    assert_not project.save
  end
end
