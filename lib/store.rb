class Store < ActiveRecord
  has_and_belongs_to_many(:brands)
end
