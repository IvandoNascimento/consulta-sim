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

ActiveRecord::Schema[7.0].define(version: 2022_08_14_181335) do
  create_table "addresses", force: :cascade do |t|
    t.string "CEP"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.string "complement"
    t.integer "paciente_id"
    t.integer "{:null=>false, :foreign_key=>true}_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_addresses_on_paciente_id"
    t.index ["{:null=>false, :foreign_key=>true}_id"], name: "index_addresses_on_{:null=>false, :foreign_key=>true}_id"
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

end
