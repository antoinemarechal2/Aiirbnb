class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :problem, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
