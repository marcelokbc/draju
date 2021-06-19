class AddStartAtToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_column :appointments, :start_at, :datetime
  end
end
