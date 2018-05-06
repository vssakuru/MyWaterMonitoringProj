class AddUserTypeMobileNumberEmailToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_type, :string, null: false
    add_column :users, :mobile_number, :integer, null: false
    add_column :users, :email, :string, null: false
  end
end
