require File.expand_path('../spec_helper', __FILE__)

load_extension("boolean")

describe "CApiTrueSpecs" do
  before :each do
    @b = CApiBooleanSpecs.new
  end

  describe "a true value from Ruby" do
    it "is truthy in C" do
      @b.is_true(true).should == 1
    end
  end

  describe "a true value from Qtrue" do
    it "is truthy in C" do
      @b.is_true(@b.q_true).should == 1
    end
  end
end
