class Task < ApplicationRecord
  has_and_belongs_to_many :assistances
  belongs_to :secretary

  validates :assistances, presence: true
  validates :nombre, presence: true
end
