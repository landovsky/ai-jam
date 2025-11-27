class CreateRecipes < ActiveRecord::Migration[8.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :content
      t.string :image
      t.text :tags
      t.integer :jam_session_id
      t.integer :author_id

      t.timestamps
    end

    add_index :recipes, :jam_session_id
    add_index :recipes, :author_id
  end
end
