require 'spec_helper'

describe(Brand) do

  describe('#capitalize_name') do
    it "capitalizes inputted name" do
      test_brand = Brand.create({:name => "nike"})
      expect(test_brand.name).to(eq('Nike'))
    end
  end
end
