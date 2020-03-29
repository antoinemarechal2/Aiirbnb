class LastnametoUser < ActiveRecord::Migration[4.2]
  def change
    add_column :users, :lastname, :string
  end
end
