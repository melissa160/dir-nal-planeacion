require 'test_helper'

class MakerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save maker without codigo' do
    maker = Maker.new
    assert_not maker.save
  end

  test 'should not save maker without sector' do
    maker = Maker.new
    assert_not maker.save
  end

  test 'should not save maker without unidad_ejecutora' do
    maker = Maker.new
    assert_not maker.save
  end
end
