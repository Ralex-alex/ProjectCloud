class CreateTasks < ActiveRecord::Migration[8.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :deadline
      t.integer :priority
      t.string :status
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
