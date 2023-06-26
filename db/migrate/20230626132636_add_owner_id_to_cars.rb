class AddOwnerIdToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :owner_id, :integer
  end
end
