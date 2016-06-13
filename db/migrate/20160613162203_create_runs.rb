class CreateRuns < ActiveRecord::Migration[5.0]
  def change
    create_table :runs do |t|
      t.string :name
      t.text :description
      t.datetime :date
      t.integer :duration
      t.integer :distance

      t.timestamps
    end
  end
end
