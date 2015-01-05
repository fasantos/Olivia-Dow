class CreateParagrafs < ActiveRecord::Migration
  def change
    create_table :paragrafs do |t|
      t.string :title
      t.text :body
      t.integer :staff_id
      t.integer :article_id
      t.integer :act_id

      t.timestamps
    end
  end
end
