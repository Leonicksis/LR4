class CreateArtcles < ActiveRecord::Migration[6.0]
  def change
    create_table :artcles do |t|
      t.string :title
      t.string :description
      t.string :url
      t.references :author, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
