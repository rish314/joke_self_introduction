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

ActiveRecord::Schema.define(version: 2021_10_12_182122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string "job_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_name"], name: "index_jobs_on_job_name", unique: true
  end

  create_table "levels", force: :cascade do |t|
    t.string "level_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["level_name"], name: "index_levels_on_level_name", unique: true
  end

  create_table "modifiers", force: :cascade do |t|
    t.string "modifier_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["modifier_name"], name: "index_modifiers_on_modifier_name", unique: true
  end

  create_table "operators", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_operators_on_email", unique: true
    t.index ["reset_password_token"], name: "index_operators_on_reset_password_token", unique: true
  end

  create_table "profiles", force: :cascade do |t|
    t.string "nick_name"
    t.string "hash"
    t.bigint "job_id", null: false
    t.bigint "level_id", null: false
    t.bigint "modifier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_profiles_on_job_id"
    t.index ["level_id"], name: "index_profiles_on_level_id"
    t.index ["modifier_id"], name: "index_profiles_on_modifier_id"
  end

  add_foreign_key "profiles", "jobs"
  add_foreign_key "profiles", "levels"
  add_foreign_key "profiles", "modifiers"
end
