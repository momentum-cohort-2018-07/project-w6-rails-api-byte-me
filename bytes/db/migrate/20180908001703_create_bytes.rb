class CreateBytes < ActiveRecord::Migration[5.2]
  def change
    create_table :bytes do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
