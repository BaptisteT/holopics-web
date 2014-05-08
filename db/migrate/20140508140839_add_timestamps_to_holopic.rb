class AddTimestampsToHolopic < ActiveRecord::Migration
      add_column(:holopic, :created_at, :datetime)
      add_column(:holopic, :updated_at, :datetime)
end
