class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :category, foreign_key: true, index: true, null: true
      t.string :name
      t.timestamps
    end
  end
end
