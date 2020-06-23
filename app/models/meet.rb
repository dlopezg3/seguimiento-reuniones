class Meet < ApplicationRecord
  has_many :assistances
  has_many :tasks, through: :assistances

  has_rich_text :notes

  validates :nombre, presence: true
end
