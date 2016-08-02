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

ActiveRecord::Schema.define(version: 20160617165458) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: :cascade do |t|
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.boolean  "admin",             default: false
    t.string   "remember_token"
    t.integer  "user_id"
    t.boolean  "mail_confirmation"
    t.integer  "distributor_id"
    t.boolean  "is_distributor",    default: false
  end

  create_table "distributor_product_relations", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "distributor_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "distributor_products", force: :cascade do |t|
    t.integer  "distributor_id"
    t.integer  "product_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "distributors", force: :cascade do |t|
    t.string   "name"
    t.string   "flat_houseno"
    t.string   "area"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "pin"
    t.bigint   "phone"
    t.string   "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "street"
    t.string   "Dpic"
    t.binary   "pic"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "distributor_id"
    t.integer  "product_id"
    t.integer  "no_of_can"
    t.datetime "time_of_delivery"
    t.integer  "price"
    t.datetime "order_time"
    t.datetime "approval_time"
    t.datetime "dispatching"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "brand"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "price"
    t.string   "quantity"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.string   "flat_houseno"
    t.string   "street"
    t.string   "area"
    t.string   "city"
    t.integer  "pin"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "dpic"
    t.binary   "pic"
    t.bigint   "phone"
    t.string   "state"
    t.string   "country"
  end

end
