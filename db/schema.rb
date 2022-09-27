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

ActiveRecord::Schema[7.0].define(version: 2022_09_27_142911) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "best_moments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "best_ways", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brindos_vips", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "best_way_id"
    t.bigint "best_moment_id"
    t.index ["best_moment_id"], name: "index_brindos_vips_on_best_moment_id"
    t.index ["best_way_id"], name: "index_brindos_vips_on_best_way_id"
  end

  create_table "megeve_vips", force: :cascade do |t|
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "best_way_id"
    t.bigint "best_moment_id"
    t.index ["best_moment_id"], name: "index_megeve_vips_on_best_moment_id"
    t.index ["best_way_id"], name: "index_megeve_vips_on_best_way_id"
  end

  create_table "raba_vips", force: :cascade do |t|
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "best_way_id"
    t.bigint "best_moment_id"
    t.index ["best_moment_id"], name: "index_raba_vips_on_best_moment_id"
    t.index ["best_way_id"], name: "index_raba_vips_on_best_way_id"
  end

  create_table "sacy_vips", force: :cascade do |t|
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "best_way_id"
    t.bigint "best_moment_id"
    t.index ["best_moment_id"], name: "index_sacy_vips_on_best_moment_id"
    t.index ["best_way_id"], name: "index_sacy_vips_on_best_way_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vips", force: :cascade do |t|
    t.string "name"
    t.string "first_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "brindos_vips", "best_moments"
  add_foreign_key "brindos_vips", "best_ways"
  add_foreign_key "megeve_vips", "best_moments"
  add_foreign_key "megeve_vips", "best_ways"
  add_foreign_key "raba_vips", "best_moments"
  add_foreign_key "raba_vips", "best_ways"
  add_foreign_key "sacy_vips", "best_moments"
  add_foreign_key "sacy_vips", "best_ways"
end
