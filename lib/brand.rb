require 'active_record'
class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates :name, presence: true
  before_save(:capitalize_name)

  # validate :brand_unique_per_store

  private

  def capitalize_name
    self.name = self.name.capitalize
  end
  #
  # def brand_unique_per_store
  #   current_store = Store.find(self.id)
  #   if current_store.brands.exists?(:name => name)
  #     errors.add :name, 'already exists'
  #   end
  # end
  # def brand_unique_per_store
  #   current_store = Store.find(self.id)
  #   current_brand =
  #   found_brand = nil
  #   current_store.brands.each do |brand|
  #     if brand.name == current_brand
  #     errors.add :name, 'already exists'
  #   end
  # end

end
