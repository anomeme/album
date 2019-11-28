class AddParentIdToSpots < ActiveRecord::Migration[6.0]
  def change
    add_column :spots, :parent_id, :integer
  end
end
