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

ActiveRecord::Schema[7.0].define(version: 2022_08_14_185551) do
  create_table "addresses", force: :cascade do |t|
    t.string "CEP"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.string "complement"
    t.integer "paciente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_addresses_on_paciente_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.string "time"
    t.integer "doctor_id", null: false
    t.integer "paciente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["paciente_id"], name: "index_appointments_on_paciente_id"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "email"
    t.string "specialty"
    t.string "crm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "cpf"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "pacientes"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "pacientes"
end
