class ContinentsPopulation < ApplicationRecord
  validates :name, :contribution, :population, presence: true
end
