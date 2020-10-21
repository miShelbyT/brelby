# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_20_013758) do

  create_table "bakeries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cupcakes", force: :cascade do |t|
    t.integer "bakery_id", null: false
    t.string "name"
    t.string "description"
    t.integer "price"
    t.string "pairing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bakery_id"], name: "index_cupcakes_on_bakery_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "wine_id", null: false
    t.integer "cupcake_id", null: false
    t.date "date"
    t.time "time"
    t.float "tip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cupcake_id"], name: "index_orders_on_cupcake_id"
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["wine_id"], name: "index_orders_on_wine_id"
  end

  create_table "wine_shops", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.integer "wine_shop_id", null: false
    t.string "name"
    t.string "grape"
    t.string "origin"
    t.integer "price"
    t.string "pairing"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["wine_shop_id"], name: "index_wines_on_wine_shop_id"
  end

  add_foreign_key "cupcakes", "bakeries"
  add_foreign_key "orders", "cupcakes"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "wines"
  add_foreign_key "wines", "wine_shops"
end
