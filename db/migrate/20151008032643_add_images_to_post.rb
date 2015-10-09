class AddImagesToPost < ActiveRecord::Migration
  def change
    add_column :posts, :image_1, :string
    add_column :posts, :image_2, :string
    add_column :posts, :image_3, :string
    add_column :posts, :image_4, :string
    add_column :posts, :image_5, :string
  end
end
