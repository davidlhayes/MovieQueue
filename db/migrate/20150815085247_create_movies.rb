class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :importance
      t.string :reason
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
