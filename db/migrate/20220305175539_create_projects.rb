class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :tech_stack
      t.belongs_to :experience, index: true, foreign_key: true
      t.belongs_to :profile, index: true, foreign_key: true
      t.timestamps
    end
  end
end
