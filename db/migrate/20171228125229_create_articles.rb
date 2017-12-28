class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :url
      t.string :image_url
      t.string :title
      t.string :description
    end
  end
end
