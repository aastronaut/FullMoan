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

ActiveRecord::Schema.define(version: 20161125204328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sensor_modifications", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "sensor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sensor_id"], name: "index_sensor_modifications_on_sensor_id", using: :btree
    t.index ["user_id"], name: "index_sensor_modifications_on_user_id", using: :btree
  end

  create_table "sensors", force: :cascade do |t|
    t.string   "name"
    t.decimal  "version"
    t.decimal  "power"
    t.decimal  "resolution"
    t.decimal  "maximum_range"
    t.integer  "vendor_id"
    t.integer  "type_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["type_id"], name: "index_sensors_on_type_id", using: :btree
    t.index ["vendor_id"], name: "index_sensors_on_vendor_id", using: :btree
  end

  create_table "types", force: :cascade do |t|
    t.integer  "type_number"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",               default: "email", null: false
    t.string   "uid",                    default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "name"
    t.string   "nickname"
    t.string   "image"
    t.string   "email"
    t.json     "tokens"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["email"], name: "index_users_on_email", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true, using: :btree
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "sensor_modifications", "sensors"
  add_foreign_key "sensor_modifications", "users"
  add_foreign_key "sensors", "types"
  add_foreign_key "sensors", "vendors"
end
