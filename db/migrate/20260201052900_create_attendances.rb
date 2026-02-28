class CreateAttendances < ActiveRecord::Migration[8.1]
  def change
    create_table :attendances do |t|
      t.references :user, null: false, foreign_key: true
      t.references :jam_session, null: false, foreign_key: true
      t.string :role

      t.timestamps
    end
  end
end
