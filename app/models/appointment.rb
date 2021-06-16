class Appointment < ApplicationRecord
  belongs_to :animals

  validate :name, :datetime, :address, :phone, presence: true
end
