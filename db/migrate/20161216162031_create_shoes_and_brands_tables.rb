class CreateShoesAndBrandsTables < ActiveRecord::Migration[5.0]
  def change
    create_table(:shoes) do |t|
      t.column(:name, :string)
    end
    create_table(:brands) do |t|
      t.column(:name, :string)
    end
  end
end
