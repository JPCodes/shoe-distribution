require 'spec_helper'

describe(Brand) do

  describe('#capitalize_name') do
    it "capitalizes inputted name" do
      test_brand = Brand.create({:name => "nike"})
      expect(test_brand.name).to(eq('Nike'))
    end
  end

  describe('#uniqueness') do
    it "disallows creation of the same Brand name more than once" do
      test_brand = Brand.create({:name => "Nike"})
      test_brand2 = Brand.new({:name => "Nike"})
      expect(test_brand2.save).to(eq(false))
    end
  end
end
