class Appointment < ApplicationRecord
  belongs_to :animal

  validates :name, :datetime, :address, :phone, presence: true
end
