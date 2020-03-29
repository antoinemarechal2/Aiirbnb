class AddStatusToResolutions < ActiveRecord::Migration[4.2]
  def change
    add_column :resolutions, :status, :integer, default: 0
  end
end
