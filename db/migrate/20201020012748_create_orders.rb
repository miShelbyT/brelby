class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.belongs_to :customer, null: false, foreign_key: true
      t.belongs_to :wine, null: false, foreign_key: true
      t.belongs_to :cupcake, null: false, foreign_key: true
      t.date :date
      t.time :time
      t.float :tip

      t.timestamps
    end
  end
end
