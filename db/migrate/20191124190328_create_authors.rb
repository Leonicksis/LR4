class CreateCreator < ActiveRecord::Migration[6.0]
  def change
    create_table :creators do |t|
      t.string :imya
      t.string :familia

      t.timestamps
    end
  end
end
