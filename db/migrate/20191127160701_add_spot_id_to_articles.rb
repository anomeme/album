class AddSpotIdToArticles < ActiveRecord::Migration[6.0]
  def up
    add_column :articles, :spot_id, :integer,	null: false, foreign_key: true
  end

  def down
    remove_column :articles, :prefecture, :string
  end
end
