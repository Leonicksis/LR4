

ActiveRecord::Schema.define(version: 2019_11_24_190908) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artcles", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "url"
    t.bigint "creator_id", null: false
    t.bigint "creature_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["creator_id"], name: "index_artcles_on_creator_id"
    t.index ["creature_id"], name: "index_artcles_on_creature_id"
  end

  create_table "creators", force: :cascade do |t|
    t.string "Imya"
    t.string "Familia"
    t.datetime "created", precision: 6, null: false
    t.datetime "updated", precision: 6, null: false
  end

  create_table "creatures", force: :cascade do |t|
    t.string "title"
    t.datetime "created", precision: 6, null: false
    t.datetime "updated", precision: 6, null: false
  end

  add_foreign_key "artcles", "creators"
  add_foreign_key "artcles", "creatures"
end
