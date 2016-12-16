class Brand < ActiveRecord
  has_and_belongs_to_many(:stores)
end
