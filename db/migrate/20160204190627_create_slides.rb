class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :slideURL, null:false
      t.int :slideNumber , null:false
      t.timestamps null: false
    end
  end
end
