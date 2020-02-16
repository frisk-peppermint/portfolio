class CreateTimetables < ActiveRecord::Migration[5.1]
  def change
    create_table :timetables do |t|
      t.integer :user_id
      t.string :user_name
      t.string :time

      t.timestamps
    end
  end
end
