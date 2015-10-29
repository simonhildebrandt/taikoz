class RemoveImagesFromProduction < ActiveRecord::Migration
  def change
    remove_column :productions, :images, :string
  end
end
