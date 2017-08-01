class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :problem_type
      t.text :summary
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
