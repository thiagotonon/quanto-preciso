class AddPhoneToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :phone, :string
  end
end
