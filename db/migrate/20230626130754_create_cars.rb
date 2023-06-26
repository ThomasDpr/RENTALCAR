class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :brand
      t.text :description
      t.string :color
      t.string :picture
      t.integer :price_per_day

      t.timestamps
    end
  end
end
