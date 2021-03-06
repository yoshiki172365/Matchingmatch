class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.string :name, null: false, unique: true
      t.string :description, null: false
      t.string :pr, null: false
      t.integer :category_id, null: false
      # t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
