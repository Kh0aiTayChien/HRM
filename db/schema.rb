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

ActiveRecord::Schema.define(version: 2022_01_26_071633) do

  create_table "departments", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 20
    t.text "description", size: :tiny
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employee_files", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "position", limit: 20
    t.string "time_onboard", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_employee_files_on_employee_id"
  end

  create_table "employee_projects", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "time_assign", limit: 30
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "project_id"
    t.integer "employee_id"
    t.index ["employee_id"], name: "index_employee_projects_on_employee_id"
    t.index ["project_id"], name: "index_employee_projects_on_project_id"
  end

  create_table "employees", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 20
    t.integer "age", limit: 3
    t.string "birthday", limit: 20
    t.string "address", limit: 50
    t.string "email", limit: 50
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "rank_id"
    t.index ["rank_id"], name: "index_employees_on_rank_id"
  end

  create_table "projects", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 20
    t.text "description", size: :tiny
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id"
    t.index ["department_id"], name: "index_projects_on_department_id"
  end

  create_table "ranks", charset: "utf8mb3", collation: "utf8_unicode_ci", force: :cascade do |t|
    t.string "name", limit: 20
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end