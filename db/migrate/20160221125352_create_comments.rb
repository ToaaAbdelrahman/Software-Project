class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
 t.references :commentable, polymorphic: true
      t.references :owner
      t.references :slide
      t.text :body
      t.timestamps 
    end
  end
end

    
  
