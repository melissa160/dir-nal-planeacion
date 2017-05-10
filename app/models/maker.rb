class Maker < ApplicationRecord
  require 'csv'
  has_many :projects


  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Maker.create row.to_hash
    end 
  end
  
end
