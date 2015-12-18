
ActiveRecord::Schema.define(version: 20151214023327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.text     "name"
    t.text     "description"
    t.text     "image"
    t.text     "price"
    t.boolean  "available",   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "user_id"
    t.integer "product_id"
    t.text    "price"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.text     "name"
    t.text     "email"
    t.text     "address"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "password_digest"
  end

end
