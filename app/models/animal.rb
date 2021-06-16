class Animal < ApplicationRecord
  has_many :records
  has_many :appointments

  validate :name, :age, :specie, presence: true
end
