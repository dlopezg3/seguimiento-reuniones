class Task < ApplicationRecord
  has_and_belongs_to_many :assistances
  # belongs_to :assistance
end
