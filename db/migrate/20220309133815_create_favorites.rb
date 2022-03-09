class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.change :user_id, :bigint
      
      t.references :Micropost, null: false, foreign_key: true
      
      t.timestamps
      
      t.index [:user_id, :micropost_id], unique: true
    end
  end
end
