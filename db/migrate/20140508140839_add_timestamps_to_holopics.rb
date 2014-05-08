class AddTimestampsToHolopics < ActiveRecord::Migration
      add_column(:holopics, :created_at, :datetime)
      add_column(:holopics, :updated_at, :datetime)
end
