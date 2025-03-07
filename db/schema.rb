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

ActiveRecord::Schema.define(version: 2022_03_10_011844) do

  create_table "file", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", limit: 30, null: false
    t.binary "file", null: false
    t.timestamp "created_date", default: -> { "current_timestamp()" }, null: false
  end

  create_table "user", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "email", limit: 30, null: false
    t.string "username", limit: 10, null: false
    t.string "password", limit: 250, null: false
    t.integer "signature_id"
    t.datetime "modified_date"
    t.timestamp "created_date", default: -> { "current_timestamp()" }, null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "api_id"
    t.index ["email"], name: "index_user_on_email", unique: true
    t.index ["reset_password_token"], name: "index_user_on_reset_password_token", unique: true
    t.index ["signature_id"], name: "user_signature_id_fk"
  end

  add_foreign_key "user", "file", column: "signature_id", name: "user_signature_id_fk", on_update: :cascade, on_delete: :cascade
end
