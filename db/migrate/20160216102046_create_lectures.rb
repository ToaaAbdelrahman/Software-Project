class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :attachment
      t.integer :document_id
      t.timestamps null: false
    end
  end
end
