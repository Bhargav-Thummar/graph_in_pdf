class CreateContinentsPopulations < ActiveRecord::Migration[5.2]
  def change
    create_table :continents_populations do |t|
      t.string :name
      t.bigint :population, default: 0
      t.float :contribution, default: 0

      t.timestamps
    end
  end
end
