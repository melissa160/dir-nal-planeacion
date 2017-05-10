class Year < ApplicationRecord
  has_many :projects
  validates :year, presence: true
end
