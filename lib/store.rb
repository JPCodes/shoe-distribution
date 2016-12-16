class Store < ActiveRecord::Base
  has_and_belongs_to_many(:brands)
  validates :name, presence: true
  validates_uniqueness_of :name
  before_save(:capitalize_name)

  def brand_unique_per_store(current_brand)
    current_store = Store.find(self.id)
    current_store.brands.each do |brand|
      if brand.name == current_brand.name
        errors.add 'brand ' + :name.to_s, 'already exists in this store'
        return false
      end
    end
  end

  private

  def capitalize_name
    self.name = self.name.capitalize
  end
end
