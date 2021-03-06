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

ActiveRecord::Schema.define(version: 20171213081928) do

  create_table "jobs", force: :cascade do |t|
    t.string   "company_name"
    t.string   "title"
    t.string   "description"
    t.string   "contact_email"
    t.string   "wage_lower_bound"
    t.string   "wage_upper_bound"
    t.string   "company_address"
    t.boolean  "is_hidden"
    t.string   "work_location"
    t.string   "skill_requirement"
    t.string   "remuneration"
    t.integer  "number_of_hiring"
    t.string   "official_website"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "logo"
    t.string   "slogan"
    t.string   "cp_lng"
    t.string   "cp_lat"
    t.boolean  "is_hot",            default: false
  end

  create_table "resumes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_resumes_on_job_id"
    t.index ["user_id"], name: "index_resumes_on_user_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string   "name"
    t.date     "birthday"
    t.string   "introduction"
    t.string   "phone"
    t.string   "email"
    t.string   "blog"
    t.string   "github"
    t.string   "attachment"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "avatar"
    t.string   "prior_experience"
    t.string   "research_interests"
    t.string   "education"
    t.string   "facebook"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "weixin"
    t.string   "stackoverflow"
    t.string   "position_applied"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "is_admin",               default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
