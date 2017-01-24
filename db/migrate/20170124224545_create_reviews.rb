class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.date :date
      t.text :body
      t.integer :rating
      t.references :user, foreign_key: true
      t.references :exhibition, foreign_key: true

      t.timestamps
    end
  end
end
