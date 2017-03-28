class AddNotices < ActiveRecord::Migration[5.0]
  def change
    create_table :notices do |t|
      t.string :title, null: false
      t.text :description
      t.string :image
      t.date :posted_at, null: false

      t.timestamps null: false
    end
  end
end
