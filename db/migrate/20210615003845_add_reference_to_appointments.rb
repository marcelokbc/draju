class AddReferenceToAppointments < ActiveRecord::Migration[6.1]
  def change
    add_reference :appointments, :animal, null: false, foreign_key: true
  end
end
