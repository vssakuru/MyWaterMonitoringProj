class RemoveNameUserTypeMobileNumberEmailFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :name, :string
    remove_column :users, :user_type, :string
    remove_column :users, :mobile_number, :string
    remove_column :users, :email, :string
  end
end
