class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.datetime :date

      t.timestamps
    end
  end
end
