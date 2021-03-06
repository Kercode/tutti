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

ActiveRecord::Schema.define(version: 2019_09_08_103557) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
  end

  create_table "authentications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "firstname", default: "", null: false
    t.string "lastname", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "userable_id"
    t.string "userable_type"
    t.index ["email"], name: "index_authentications_on_email", unique: true
    t.index ["reset_password_token"], name: "index_authentications_on_reset_password_token", unique: true
    t.index ["userable_id", "userable_type"], name: "index_authentications_on_userable_id_and_userable_type"
  end

  create_table "events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.date "open"
    t.date "close"
    t.date "delivery"
  end

  create_table "groupment_authentications", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "groupment_id"
    t.bigint "authentication_id"
    t.index ["authentication_id"], name: "index_groupment_authentications_on_authentication_id"
    t.index ["groupment_id"], name: "index_groupment_authentications_on_groupment_id"
  end

  create_table "groupments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
  end

  create_table "managers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
  end

  create_table "order_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "order_id"
    t.integer "quantity"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["product_id"], name: "index_order_items_on_product_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "authentication_id"
    t.date "date"
    t.boolean "accept", default: false
    t.index ["authentication_id"], name: "index_orders_on_authentication_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "package"
    t.integer "price"
    t.boolean "available", default: true
    t.integer "weight_value"
    t.string "weight_type"
  end

  create_table "whitelists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "groupment_authentications", "authentications"
  add_foreign_key "groupment_authentications", "groupments"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "products"
  add_foreign_key "orders", "authentications"
end
