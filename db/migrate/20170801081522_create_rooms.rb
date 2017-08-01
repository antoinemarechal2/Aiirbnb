class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :problem_type
      t.text :summary
      t.boolean :active
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
