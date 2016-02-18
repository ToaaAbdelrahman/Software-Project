class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :pic
      t.integer :lecture_id
      t.integer :no_Of_Pic
      t.timestamps null: false
    end
  end
end
