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

ActiveRecord::Schema.define(version: 2020_06_23_202829) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assistances", force: :cascade do |t|
    t.bigint "meet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.index ["meet_id"], name: "index_assistances_on_meet_id"
  end

  create_table "meets", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.datetime "fecha"
    t.string "lugar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "notes"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "fecha"
    t.bigint "assistance_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assistance_id"], name: "index_tasks_on_assistance_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assistances", "meets"
  add_foreign_key "tasks", "assistances"
end
