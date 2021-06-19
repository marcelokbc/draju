class Animal < ApplicationRecord
  has_many :records
  has_many :appointments

  validates :name, :age, :specie, presence: true
end
