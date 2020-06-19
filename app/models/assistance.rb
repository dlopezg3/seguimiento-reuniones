class Assistance < ApplicationRecord
  belongs_to :meet

  validates :email, presence: true
end
