class Appointment < ApplicationRecord
  has_many :animals

  validate :name, :datetime, :address, :phone, presence: true
end
