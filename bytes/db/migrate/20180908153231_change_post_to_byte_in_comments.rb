class ChangePostToByteInComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :post_id, :integer
    add_column :comments, :byte_id, :integer
  end
end
