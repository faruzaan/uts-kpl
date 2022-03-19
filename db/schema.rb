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

ActiveRecord::Schema.define(version: 2022_03_17_055930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gajis", force: :cascade do |t|
    t.integer "karyawan_id"
    t.integer "tunjangan_ids"
    t.string "desc"
    t.integer "potongan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["karyawan_id"], name: "index_gajis_on_karyawan_id"
    t.index ["tunjangan_ids"], name: "index_gajis_on_tunjangan_ids"
  end

  create_table "gajis_tunjangans", id: false, force: :cascade do |t|
    t.bigint "gaji_id", null: false
    t.bigint "tunjangan_id", null: false
    t.index ["gaji_id", "tunjangan_id"], name: "index_gajis_tunjangans_on_gaji_id_and_tunjangan_id"
    t.index ["tunjangan_id", "gaji_id"], name: "index_gajis_tunjangans_on_tunjangan_id_and_gaji_id"
  end

  create_table "golongans", force: :cascade do |t|
    t.integer "gapok"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "karyawans", force: :cascade do |t|
    t.integer "golongan_id"
    t.string "nama"
    t.string "jns_klm"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["golongan_id"], name: "index_karyawans_on_golongan_id"
  end

  create_table "tunjangans", force: :cascade do |t|
    t.string "nama"
    t.integer "besar_tunjangan"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
