class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.belongs_to :wine_shop, null: false, foreign_key: true
      t.string :name
      t.string :grape
      t.string :origin
      t.integer :price
      t.string :pairing

      t.timestamps
    end
  end
end
