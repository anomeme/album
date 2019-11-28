class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.string :name, null: false
      t.text :profile
      t.timestamps
    end
  end
end
