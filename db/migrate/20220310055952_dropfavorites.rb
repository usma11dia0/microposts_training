class Dropfavorites < ActiveRecord::Migration[6.1]
  def change
    drop_table :favorites do
    end
  end
end
