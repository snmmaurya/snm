class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.references :user
      t.references :doctor
      t.datetime :appointment_at
      t.timestamps
    end
  end
end
