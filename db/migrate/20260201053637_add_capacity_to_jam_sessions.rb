class AddCapacityToJamSessions < ActiveRecord::Migration[8.1]
  def change
    add_column :jam_sessions, :capacity, :integer
  end
end
