class RemoveAdressFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :adress, :string
  end
end
