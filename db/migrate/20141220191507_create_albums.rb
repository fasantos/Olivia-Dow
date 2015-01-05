class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :title
      t.binary :poster

      t.timestamps
    end
  end
end
