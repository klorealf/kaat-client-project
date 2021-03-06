class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :votes
      t.references :recipe, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
