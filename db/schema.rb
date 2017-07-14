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

ActiveRecord::Schema.define(version: 20170713073441) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "details"
    t.string "coyname"
    t.string "hr_name"
    t.string "img_url"
    t.integer "cnetid"
    t.integer "reviews"
    t.integer "appt_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_companies_on_email", unique: true
    t.index ["reset_password_token"], name: "index_companies_on_reset_password_token", unique: true
  end

  create_table "company_networks", force: :cascade do |t|
    t.integer "from_cid"
    t.integer "to_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "educations", force: :cascade do |t|
    t.integer "user_id"
    t.string "school"
    t.string "year"
    t.string "level"
    t.string "cert"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "coy_id"
    t.integer "bounty"
    t.string "details"
    t.string "title"
    t.string "jobtype"
    t.integer "shortlists"
    t.string "sector"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.integer "from_uid"
    t.integer "to_uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "referrals", force: :cascade do |t|
    t.integer "ref_id"
    t.integer "can_id"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "from_uid"
    t.integer "to_uid"
    t.integer "from_cid"
    t.integer "to_cid"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "saved_jobs", force: :cascade do |t|
    t.integer "job_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.integer "user_id"
    t.string "skill"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "testis", force: :cascade do |t|
    t.integer "from_uid"
    t.integer "to_uid"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uc_networks", force: :cascade do |t|
    t.integer "from_uid"
    t.integer "to_cid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "address"
    t.string "location"
    t.string "headline"
    t.string "contact"
    t.string "img_url"
    t.integer "workexp"
    t.integer "skills"
    t.integer "education"
    t.integer "referrals"
    t.integer "network"
    t.integer "reviews"
    t.integer "testi"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_exps", force: :cascade do |t|
    t.integer "user_id"
    t.string "company"
    t.string "detail"
    t.string "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
