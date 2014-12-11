# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141209211103) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bvd_cos", force: true do |t|
    t.string   "name"
    t.string   "bvdid"
    t.string   "country"
    t.string   "city"
    t.text     "primary_naics"
    t.text     "secondary_naics"
    t.integer  "core_code_naics"
    t.text     "core_naics_text_description"
    t.text     "primary_sic"
    t.text     "secondary_sic"
    t.text     "bvd_major_sector"
    t.text     "trade_description"
    t.text     "category_of_the_company"
    t.integer  "date_of_incorporation"
    t.string   "type_of_entity"
    t.string   "status"
    t.string   "listed_unlisted_delisted"
    t.text     "operating_revenue_lcu_ly0"
    t.text     "operating_revenue_lcu_ly1"
    t.text     "operating_revenue_lcu_ly2"
    t.text     "operating_revenue_usd_ly0"
    t.text     "operating_revenue_usd_ly1"
    t.text     "operating_revenue_usd_ly2"
    t.text     "ebitda_lcu_ly0"
    t.text     "ebitda_lcu_ly1"
    t.text     "ebitda_lcu_ly2"
    t.text     "ebitda_usd_ly0"
    t.text     "ebitda_usd_ly1"
    t.text     "ebitda_usd_ly2"
    t.text     "employees_ly0"
    t.text     "employees_ly1"
    t.text     "employees_ly2"
    t.text     "total_assets_lcu_ly0"
    t.text     "total_assets_lcu_ly1"
    t.text     "total_assets_lcu_ly2"
    t.text     "total_assets_usd_ly0"
    t.text     "total_assets_usd_ly1"
    t.text     "total_assets_usd_ly2"
    t.text     "closing_date_ly0"
    t.text     "closing_date_ly1"
    t.text     "closing_date_ly2"
    t.string   "native_currency"
    t.string   "full_name_of_main_manager"
    t.text     "auditor_name"
    t.string   "auditor_type"
    t.string   "guo_name"
    t.string   "guo_bvd_id_number"
    t.string   "guo_country_iso_code"
    t.text     "guo_total"
    t.text     "guo_direct"
    t.string   "guo_type"
    t.string   "guo_information_source"
    t.string   "guo_information_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "bvd_cos", ["bvdid"], name: "index_bvd_cos_on_bvdid", using: :btree

  create_table "deal_advisors_links", force: true do |t|
    t.integer  "deal_number"
    t.integer  "role_id"
    t.string   "role_description"
    t.integer  "parent_role_id"
    t.string   "location"
    t.integer  "company_zephus_id"
    t.string   "deal_professional_forename"
    t.string   "deal_professional_surname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deal_overviews", force: true do |t|
    t.integer  "deal_number"
    t.text     "deal_headline"
    t.string   "target_name"
    t.string   "acquiror_name"
    t.string   "vendor_name"
    t.string   "deal_type"
    t.string   "deal_status"
    t.text     "deal_type_text"
    t.integer  "target_zephus_id_number"
    t.integer  "acquiror_zephus_id_number"
    t.string   "vendor_zephus_id_number"
    t.string   "target_bvd_id_number"
    t.string   "acquiror_bvd_id_number"
    t.string   "vendor_bvd_id_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "naics_dg_mappings", force: true do |t|
    t.string   "dg_industry"
    t.string   "dg_sector"
    t.integer  "naics"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "people_recomendations", force: true do |t|
    t.string   "name"
    t.integer  "sector_id"
    t.string   "country_name"
    t.string   "job_title"
    t.string   "company_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.text     "country"
    t.text     "city"
    t.text     "name"
    t.text     "postcode"
    t.text     "website"
    t.text     "link"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "zephyr_entity_bases", force: true do |t|
    t.integer  "zephus_id"
    t.string   "bvd_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
