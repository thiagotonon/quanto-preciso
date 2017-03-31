class AddContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :email, null: false
      t.string :subject, null: false
      t.text :message, null: false

      t.timestamps null: false
    end
  end
end
