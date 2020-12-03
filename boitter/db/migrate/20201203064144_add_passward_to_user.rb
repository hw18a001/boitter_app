class AddPasswardToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ipassword, :string
  end
end
