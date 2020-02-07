class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.string :time
      t.string :reservation

      t.timestamps
    end
  end
end
