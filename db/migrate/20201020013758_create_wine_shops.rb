class CreateWineShops < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_shops do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
