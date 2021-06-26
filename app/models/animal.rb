class Animal < ApplicationRecord
  has_many :records
  has_many :appointments

  belongs_to :user

  validates :name, :age, :specie, presence: true
end
