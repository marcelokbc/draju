class Appointment < ApplicationRecord
  belongs_to :animal

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  validates :name, :date, :address, :phone, presence: true
end
