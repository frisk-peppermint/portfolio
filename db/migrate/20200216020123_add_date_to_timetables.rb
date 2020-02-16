class AddDateToTimetables < ActiveRecord::Migration[5.1]
  def change
    add_column :timetables, :date, :string
  end
end
