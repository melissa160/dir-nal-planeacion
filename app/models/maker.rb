class Maker < ApplicationRecord
  require 'csv'
  has_many :projects
  validates :unidad_ejecutora, presence: true
  validates :codigo, presence: true
  validates :sector, presence: true


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Maker.create row.to_hash
    end 
  end
  
end
