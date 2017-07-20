class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
