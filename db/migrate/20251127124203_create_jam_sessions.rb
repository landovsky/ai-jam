class CreateJamSessions < ActiveRecord::Migration[8.1]
  def change
    create_table :jam_sessions do |t|
      t.string :title
      t.text :content
      t.string :location_address
      t.boolean :published, default: true
      t.date :held_on

      t.timestamps
    end
  end
end
