class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :orders, :customer_id, :user_id
  end
end
