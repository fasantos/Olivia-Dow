class AddFilenameAndFiletypeToImages < ActiveRecord::Migration
  def change
    add_column :images, :filename, :string, before: :filetype
    add_column :images, :filetype, :string, before: :data
  end
end
