class RemoveCatagoryFromProduction < ActiveRecord::Migration
  def change
    remove_column :productions, :catagory, :string
  end
end
