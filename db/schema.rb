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

ActiveRecord::Schema[7.0].define(version: 2022_11_03_094032) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "appraisals", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.text "collaboration"
    t.text "work_ethic"
    t.text "problem_solving"
    t.text "decision_making"
    t.text "communication"
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "employee_email"
    t.index ["user_id"], name: "index_appraisals_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", default: "user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.decimal "amount"
    t.string "description"
    t.string "payed_by"
    t.boolean "is_credit", default: true
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "avatar_url", default: "https://res.cloudinary.com/dbskfmbc8/image/upload/v1666867711/avataaars_1_wnljzy.png"
    t.string "first_name"
    t.string "last_name"
    t.datetime "date_of_birth"
    t.string "country", default: "south sudan"
    t.string "phone_number"
    t.string "address"
    t.string "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "role_id", null: false
    t.string "job_title"
    t.decimal "gross_salary"
    t.decimal "tax"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  create_table "vacations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "vacation_days"
    t.text "reason"
    t.string "status", default: "pending"
    t.uuid "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_vacations_on_user_id"
  end

  add_foreign_key "appraisals", "users"
  add_foreign_key "transactions", "users"
  add_foreign_key "users", "roles"
  add_foreign_key "vacations", "users"
end
