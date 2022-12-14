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

ActiveRecord::Schema[7.0].define(version: 2022_11_01_184937) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name", null: false
    t.string "aliass", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "title", null: false
    t.text "message", null: false
    t.date "delivery_date", null: false
    t.string "sender", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status", default: "Unread", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "order_id", null: false
    t.datetime "order_date", null: false
    t.datetime "delivery_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "order_status", null: false
    t.integer "price", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
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
    t.string "dimension", null: false
    t.float "price", null: false
    t.bigint "product_id", null: false
    t.bigint "currency_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "material", null: false
    t.string "capacity"
    t.bigint "supplier_id"
    t.string "status"
    t.string "packaging_unit", null: false
    t.index ["currency_id"], name: "index_product_items_on_currency_id"
    t.index ["product_id"], name: "index_product_items_on_product_id"
    t.index ["supplier_id"], name: "index_product_items_on_supplier_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.bigint "category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
    t.string "brand"
    t.string "picture"
    t.string "dimensions"
    t.string "conversion_factor"
    t.string "base_unit"
    t.string "target_unit"
    t.string "date_valid_from"
    t.string "expiry_date"
    t.string "item_group"
    t.string "weight_in_kg"
    t.string "tax_class"
    t.string "revenue_code"
    t.string "color"
    t.string "material"
    t.index ["category_id"], name: "index_products_on_category_id"
  end

  create_table "quotation_requests", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "phone_number", null: false
    t.string "email", null: false
    t.string "product_name", null: false
    t.string "image_url", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "quantity"
    t.string "status", null: false
  end

  create_table "supplier_products", force: :cascade do |t|
    t.bigint "supplier_id", null: false
    t.bigint "product_id", null: false
    t.string "remark", null: false
    t.integer "supplier_purchase_price", null: false
    t.bigint "currency_id", null: false
    t.string "supplier_margin", null: false
    t.string "supplier_notes", null: false
    t.string "quantity_unit", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_supplier_products_on_currency_id"
    t.index ["product_id"], name: "index_supplier_products_on_product_id"
    t.index ["supplier_id"], name: "index_supplier_products_on_supplier_id"
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

  create_table "users", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "user_type", default: "Customer", null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "product_items", "currencies"
  add_foreign_key "product_items", "products"
  add_foreign_key "product_items", "suppliers"
  add_foreign_key "products", "categories"
  add_foreign_key "supplier_products", "currencies"
  add_foreign_key "supplier_products", "products"
  add_foreign_key "supplier_products", "suppliers"
end
