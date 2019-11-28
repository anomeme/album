class AddArticleIdToPicture < ActiveRecord::Migration[6.0]
  def change
    add_column :pictures, :article_id, :integer,	null: false, foreign_key: true
  end
end
