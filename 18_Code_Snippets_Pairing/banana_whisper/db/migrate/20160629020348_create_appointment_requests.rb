class CreateAppointmentRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :appointment_requests do |t|
      t.date :request_date
      t.time :request_time
      t.string :location
      t.string :service_category
      t.integer :barber_id
      t.boolean :active
      t.string :status
      t.integer :account_id
      t.datetime :request_datetime

      t.timestamps
    end
  end
end
