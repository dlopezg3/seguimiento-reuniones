class Meet < ApplicationRecord
  has_many :assistances
  has_many :tasks, through: :assistances

  has_rich_text :notes
  has_rich_text :protocol
  has_rich_text :agenda

  validates :nombre, presence: true
end
