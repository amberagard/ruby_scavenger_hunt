# require_relative '../lib/vector'
#
# RSpec.describe MyVector do
#   context ".distance" do
#     it "should add i to the x and y value" do
#       vector.distance.should == [(x + i), (y + i)]
#     end
#   end
# end

require 'test_helper'
require 'vector'

class ExampleTest < MiniTest::Unit::TestCase

  def setup
    # This is ran before all the tests. Useful
    # when preparing input data for the objects/methods you
    # wish to test.
  end

  def test_addition_operator
    @v4 = MyVector[0, 1]
    assert_equal @v, @v4 + 1
  end

  def test_insert_integer
    @v4 = MyVector[0, 1]
    assert_equal @v, @v4 << 2
  end


end
