require 'active_record'
class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  validates :name, presence: true
  validates_uniqueness_of :name
  before_save(:capitalize_name)
  
  private

  def capitalize_name
    self.name = self.name.capitalize
  end
end
