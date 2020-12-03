class RenameIpasswordColumnToUser < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :ipassword, :password     #DBのカラム名をまちがえたので変更
  end
end
