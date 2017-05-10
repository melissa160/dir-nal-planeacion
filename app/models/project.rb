class Project < ApplicationRecord
  require 'csv'
  belongs_to :maker
  belongs_to :year

  validates :nombre, presence: true
  validates :year_id, presence: true



  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Project.create row.to_hash
    end 
  end
end
