class AddWaitlistFieldsToAttendances < ActiveRecord::Migration[8.1]
  def change
    add_column :attendances, :status, :string, default: 'attending', null: false
    add_column :attendances, :waitlist_position, :integer
    add_column :attendances, :promoted_at, :datetime

    # Add composite index for efficient FIFO waitlist queries
    add_index :attendances, [:jam_session_id, :status, :waitlist_position],
              name: 'index_attendances_on_waitlist'
  end
end
