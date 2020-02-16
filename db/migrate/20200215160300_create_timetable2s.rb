class CreateTimetable2s < ActiveRecord::Migration[5.1]
  def change
    create_table :timetable2s do |t|
      t.integer :user_id
      t.integer :NOP
      t.string :time

      t.timestamps
    end
  end
end
