require_relative '../lib/vector'
require 'matrix'

RSpec.describe MyVector do
  context ".distance" do
    it "should add i to the x and y value" do
      vector.distance.should == [(x + i), (y + i)]
    end
  end
end
