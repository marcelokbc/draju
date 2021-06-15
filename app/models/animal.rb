class Animal < ApplicationRecord
  belongs_to :appointments

  validate :name, :age, :specie, presence: true
end
