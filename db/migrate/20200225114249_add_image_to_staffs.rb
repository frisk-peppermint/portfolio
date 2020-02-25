class AddImageToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :image, :string
  end
end
