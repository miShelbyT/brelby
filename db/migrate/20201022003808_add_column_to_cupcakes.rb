class AddColumnToCupcakes < ActiveRecord::Migration[6.0]
  def change
    add_column :cupcakes, :img_url, :string
  end
end
