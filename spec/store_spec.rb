require 'spec_helper'

describe(Store) do

  describe('#brand') do
    it "adds a brand to a store" do
      test_store = Store.create({:name => 'Portland Store'})
      test_brand = Brand.create({:name => 'Awesome Possum'})
      test_store.brands.push(test_brand)
      expect(test_store.brands).to(eq([test_brand]))
    end
  end

  describe('#store') do
    it "disallows blank name with validation" do
      test_store = Store.new({:name => ""})
      expect(test_store.save).to(eq(false))
    end
  end

end
