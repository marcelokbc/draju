class RemoveAppointmentDateToAppointments < ActiveRecord::Migration[6.1]
  def change
    remove_column :appointments, :appointment_date, :datetime
  end
end
