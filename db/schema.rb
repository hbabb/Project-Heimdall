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

ActiveRecord::Schema[8.1].define(version: 2026_05_26_220115) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "departments", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_departments_on_code", unique: true
    t.index ["name"], name: "index_departments_on_name", unique: true
  end

  create_table "employee_profiles", force: :cascade do |t|
    t.boolean "active", default: false, null: false
    t.datetime "created_at", null: false
    t.bigint "department_id", null: false
    t.string "mobile_phone", null: false
    t.bigint "office_id", null: false
    t.string "title", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["department_id"], name: "index_employee_profiles_on_department_id"
    t.index ["office_id"], name: "index_employee_profiles_on_office_id"
    t.index ["user_id"], name: "index_employee_profiles_on_user_id", unique: true
  end

  create_table "offices", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.string "city", null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.string "state", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_offices_on_code", unique: true
    t.index ["name"], name: "index_offices_on_name", unique: true
  end

  create_table "statuses", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.integer "sort_order", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_statuses_on_code", unique: true
    t.index ["name"], name: "index_statuses_on_name", unique: true
    t.index ["sort_order"], name: "index_statuses_on_sort_order", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.boolean "active", default: false, null: false
    t.datetime "created_at", null: false
    t.string "email", null: false
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "employee_profiles", "departments"
  add_foreign_key "employee_profiles", "offices"
  add_foreign_key "employee_profiles", "users"
end
