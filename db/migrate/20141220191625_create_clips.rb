class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :adress
      t.integer :act_id

      t.timestamps
    end
  end
end
