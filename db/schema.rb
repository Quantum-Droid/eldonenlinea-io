# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161018193738) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street",          limit: 255
    t.string   "exterior_number", limit: 255
    t.string   "interior_number", limit: 255
    t.string   "area",            limit: 255
    t.string   "city",            limit: 255
    t.string   "state",           limit: 255
    t.string   "zip_code",        limit: 255
    t.string   "phone_number",    limit: 255
    t.integer  "restaurant_id",   limit: 4
    t.integer  "employee_id",     limit: 4
    t.integer  "customer_id",     limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "addresses", ["customer_id"], name: "index_addresses_on_customer_id", using: :btree
  add_index "addresses", ["employee_id"], name: "index_addresses_on_employee_id", using: :btree
  add_index "addresses", ["restaurant_id"], name: "index_addresses_on_restaurant_id", using: :btree

  create_table "customers", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.string   "email",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "profile_picture", limit: 255
    t.string   "email",           limit: 255
    t.string   "username",        limit: 255
    t.string   "password",        limit: 255
    t.integer  "restaurant_id",   limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "employees", ["restaurant_id"], name: "index_employees_on_restaurant_id", using: :btree

  create_table "ingredients", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "stock",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "date"
    t.decimal  "amount",                precision: 10
    t.integer  "customer_id", limit: 4
    t.integer  "employee_id", limit: 4
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["employee_id"], name: "index_orders_on_employee_id", using: :btree

  create_table "orders_torta", id: false, force: :cascade do |t|
    t.integer "tortum_id", limit: 4
    t.integer "order_id",  limit: 4
  end

  add_index "orders_torta", ["order_id"], name: "index_orders_torta_on_order_id", using: :btree
  add_index "orders_torta", ["tortum_id"], name: "index_orders_torta_on_tortum_id", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "torta", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.decimal  "price",                  precision: 10
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "torta_ingredients", id: false, force: :cascade do |t|
    t.integer "ingredient_id", limit: 4
    t.integer "tortum_id",     limit: 4
  end

  add_index "torta_ingredients", ["ingredient_id"], name: "index_torta_ingredients_on_ingredient_id", using: :btree
  add_index "torta_ingredients", ["tortum_id"], name: "index_torta_ingredients_on_tortum_id", using: :btree

  add_foreign_key "addresses", "customers"
  add_foreign_key "addresses", "employees"
  add_foreign_key "addresses", "restaurants"
  add_foreign_key "employees", "restaurants"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
  add_foreign_key "orders_torta", "orders"
  add_foreign_key "orders_torta", "torta"
  add_foreign_key "torta_ingredients", "ingredients"
  add_foreign_key "torta_ingredients", "torta"
end
