class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.date :date
      t.text :body
      t.references :review, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
