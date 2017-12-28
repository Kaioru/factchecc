class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.belongs_to :article, null: false
      t.belongs_to :user, null: false
      t.boolean :is_fake, default: true
    end
  end
end
