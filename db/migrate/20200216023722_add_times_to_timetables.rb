class AddTimesToTimetables < ActiveRecord::Migration[5.1]
  def change
    add_column :timetables, :hour, :string
    add_column :timetables, :minute, :string
  end
end
