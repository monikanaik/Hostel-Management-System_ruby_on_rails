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

ActiveRecord::Schema.define(version: 2021_03_19_062651) do

  create_table "allotments", force: :cascade do |t|
    t.date "check_in_date"
    t.date "check_out_date"
    t.integer "room_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_allotments_on_room_id"
    t.index ["student_id"], name: "index_allotments_on_student_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "block_number"
    t.integer "number_of_rooms"
    t.integer "number_of_allotments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fees", force: :cascade do |t|
    t.integer "deposite_fee"
    t.integer "total_fee"
    t.date "deposit_date"
    t.integer "student_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["student_id"], name: "index_fees_on_student_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "room_no"
    t.string "floor"
    t.integer "block_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_rooms_on_block_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.string "address"
    t.integer "phone"
    t.string "email"
    t.integer "block_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_staffs_on_block_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "father_name"
    t.string "address"
    t.string "department"
    t.integer "phone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "allotments", "rooms"
  add_foreign_key "allotments", "students"
  add_foreign_key "fees", "students"
  add_foreign_key "rooms", "blocks"
  add_foreign_key "staffs", "blocks"
end
