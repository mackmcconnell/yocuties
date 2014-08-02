class AddYoUsernameAndEmailToUser < ActiveRecord::Migration
  def change
    add_column :users, :yo_username, :string
    add_column :users, :email, :string
  end
end
