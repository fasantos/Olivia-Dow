class AddPerformanceIdToImages < ActiveRecord::Migration
  def change
    add_column :images, :performance_id, :integer
  end
end
