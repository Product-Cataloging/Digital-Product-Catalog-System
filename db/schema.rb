# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_08_081913) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "address_line1", null: false
    t.string "address_line2", null: false
    t.string "city", null: false
    t.string "region", null: false
    t.string "postal_code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
  end

  create_table "contact_informations", force: :cascade do |t|
    t.string "primary_phone_number", null: false
    t.string "secondary_phone_number", null: false
    t.string "fax", null: false
    t.string "email", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", null: false
    t.string "aliass", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.bigint "contact_information_id", null: false
    t.bigint "user_id", null: false
    t.bigint "address_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_customers_on_address_id"
    t.index ["contact_information_id"], name: "index_customers_on_contact_information_id"
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "packages", force: :cascade do |t|
    t.integer "total_piece", null: false
    t.float "general_weight", null: false
    t.float "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_items", force: :cascade do |t|
    t.string "color", null: false
    t.integer "size", null: false
    t.bigint "unit_of_measure_id", null: false
    t.float "price", null: false
    t.bigint "product_id", null: false
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_product_items_on_currency_id"
    t.index ["product_id"], name: "index_product_items_on_product_id"
    t.index ["unit_of_measure_id"], name: "index_product_items_on_unit_of_measure_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.bigint "category_id", null: false
    t.bigint "supplier_id", null: false
    t.string "tag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "company_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address_line", null: false
    t.string "primary_phone_number", null: false
    t.string "email", null: false
    t.string "postal_code"
    t.string "fax"
  end

  create_table "unit_of_measures", force: :cascade do |t|
    t.string "name", null: false
    t.string "abbreviation", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "user_type", default: "Customer", null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customers", "addresses"
  add_foreign_key "customers", "contact_informations"
  add_foreign_key "customers", "users"
  add_foreign_key "product_items", "currencies"
  add_foreign_key "product_items", "products"
  add_foreign_key "product_items", "unit_of_measures"
  add_foreign_key "products", "categories"
  add_foreign_key "products", "suppliers"
end
