class ContinentsPopulation < ApplicationRecord
  validates :name, :contribution, :population, presence: true

  def self.contribution_distibution_for_graph
    pluck(:name, :contribution)
  end
end
