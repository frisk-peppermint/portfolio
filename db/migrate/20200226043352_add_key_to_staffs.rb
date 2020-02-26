class AddKeyToStaffs < ActiveRecord::Migration[5.1]
  def change
    add_column :staffs, :key, :string
  end
end
