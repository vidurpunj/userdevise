class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.date :lauched_at

      t.timestamps
    end
  end
end
