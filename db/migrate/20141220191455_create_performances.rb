class CreatePerformances < ActiveRecord::Migration
  def change
    create_table :performances do |t|
      t.string :title
      t.binary :poster

      t.timestamps
    end
  end
end
