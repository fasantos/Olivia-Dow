class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :adress
      t.binary :data
      t.integer :staff_id
      t.integer :article_id
      t.integer :album_id

      t.timestamps
    end
  end
end
