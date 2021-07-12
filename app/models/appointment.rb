class Appointment < ApplicationRecord
  belongs_to :animal

  validates :name, :date, :address, :phone, presence: true
end
