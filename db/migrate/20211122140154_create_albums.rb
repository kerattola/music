class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :title
      t.references :score, null: false, foreign_key: true

      t.timestamps
    end
  end
end
