class Meet < ApplicationRecord
  has_many :assistances
  has_many :tasks, through: :assistances

  validates :nombre, presence: true
end
