class CreateCupcakes < ActiveRecord::Migration[6.0]
  def change
    create_table :cupcakes do |t|
      t.belongs_to :bakery, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.integer :price
      t.string :pairing

      t.timestamps
    end
  end
end
