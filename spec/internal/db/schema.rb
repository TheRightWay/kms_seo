ActiveRecord::Schema.define do
  create_table "kms_pages", force: :cascade do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "content",          default: ""
    t.boolean  "published"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "template_id"
    t.string   "ancestry"
    t.string   "fullpath"
    t.boolean  "templatable",      default: false
    t.string   "templatable_type"
    t.boolean  "hidden",           default: false
    t.integer  "position",         default: 0,     null: false
    t.index ["ancestry"], name: "index_kms_pages_on_ancestry", using: :btree
  end

  create_table "kms_settings", force: :cascade do |t|
    t.json     "values",     default: {}
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end
end
