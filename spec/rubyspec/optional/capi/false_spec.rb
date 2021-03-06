require File.expand_path('../spec_helper', __FILE__)

load_extension("boolean")

describe "CApiFalseSpecs" do
  before :each do
    @b = CApiBooleanSpecs.new
  end

  describe "a false value from Ruby" do
    it "is falsey in C" do
      @b.is_true(false).should == 2
    end
  end

  describe "a false value from Qfalse" do
    it "is falsey in C" do
      @b.is_true(@b.q_false).should == 2
    end
  end
end
