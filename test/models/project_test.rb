require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should not save project without nombre' do
    project = Project.new
    assert_not project.save
  end

  test 'should not save project without year_id' do
    project = Project.new
    assert_not project.save
  end


end
