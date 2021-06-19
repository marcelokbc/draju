class RemoveDateToAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :date
  end
end
