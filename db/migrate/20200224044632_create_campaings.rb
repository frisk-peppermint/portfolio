class CreateCampaings < ActiveRecord::Migration[5.1]
  def change
    create_table :campaings do |t|
      t.string :content
      t.integer :staff_id

      t.timestamps
    end
  end
end
