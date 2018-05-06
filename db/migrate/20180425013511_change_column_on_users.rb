class ChangeColumnOnUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :name, :string, null: false
    change_column :users, :email, :string, null: false
    change_column :users, :user_type, :string, null: false
    change_column :users, :mobile_number, :integer, null: false
  end
end
