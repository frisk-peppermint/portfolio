class RemoveTimeFromTimetables < ActiveRecord::Migration[5.1]
  def change
    remove_column :timetables, :time, :string
  end
end
