class CreateActs < ActiveRecord::Migration
  def change
    create_table :acts do |t|
      t.string :name
      t.integer :performance_id

      t.timestamps
    end
  end
end
