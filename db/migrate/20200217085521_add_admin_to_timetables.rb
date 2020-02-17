class AddAdminToTimetables < ActiveRecord::Migration[5.1]
  def change
    add_column :timetables, :admin, :boolean
  end
end
