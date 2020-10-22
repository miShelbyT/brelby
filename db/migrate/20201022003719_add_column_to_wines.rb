class AddColumnToWines < ActiveRecord::Migration[6.0]
  def change
    add_column :wines, :img_url, :string
  end
end
