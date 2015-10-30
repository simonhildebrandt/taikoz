class AddCatagoryToProduction < ActiveRecord::Migration
  def change
    add_column :productions, :catagory, :integer
  end
end
