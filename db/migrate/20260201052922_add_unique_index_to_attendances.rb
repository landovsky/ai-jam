class AddUniqueIndexToAttendances < ActiveRecord::Migration[8.1]
  def change
    add_index :attendances, [:user_id, :jam_session_id], unique: true, name: 'index_attendances_on_user_and_jam_session'
  end
end
