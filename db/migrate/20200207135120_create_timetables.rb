class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.string :time
      t.string :reservation1
      t.string :reservation2
      t.string :reservation3
      t.string :reservation4
      
      t.timestamps
    end
  end
end
