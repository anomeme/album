class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :detail
      t.string :image
      t.string :prefecture

      t.timestamps
    end
  end
end
