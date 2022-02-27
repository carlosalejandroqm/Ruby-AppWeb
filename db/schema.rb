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

ActiveRecord::Schema.define(version: 0) do

  create_table "document_user", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer "user_id", null: false
    t.binary "pdf_file", limit: 4294967295
    t.index ["user_id"], name: "fk_documento_usuario_usuario_idx"
  end

  create_table "user", id: :integer, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name", limit: 45
    t.string "addres", limit: 45
    t.binary "signature", limit: 4294967295
    t.string "password"
    t.index ["addres"], name: "correo_UNIQUE", unique: true
  end

  create_table "user_request", primary_key: [" user_id", "document_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.integer " user_id", null: false
    t.integer "document_id", null: false
    t.string "state", limit: 45
    t.date "created_at"
    t.date "date_signature"
    t.index [" user_id"], name: "fk_solicitud_usuario_usuario1_idx"
    t.index ["document_id"], name: "fk_solicitud_usuario_documento_usuario1_idx"
  end

  add_foreign_key "document_user", "user", name: "fk_documento_usuario_usuario"
  add_foreign_key "user_request", "document_user", column: "document_id", name: "fk_solicitud_usuario_documento_usuario1"
  add_foreign_key "user_request", "user", column: " user_id", name: "fk_solicitud_usuario_usuario1"
end
