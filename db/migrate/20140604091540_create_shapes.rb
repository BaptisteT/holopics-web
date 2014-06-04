class CreateShapes < ActiveRecord::Migration
  def change
    create_table :shapes do |t|
      t.string :path
      t.attachment :avatar
      t.timestamps
    end
  end
end
