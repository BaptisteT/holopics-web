class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.string :path
      t.attachment :avatar
      t.timestamps
    end
  end
end
