class AddStatusToResolutions < ActiveRecord::Migration
  def change
    add_column :resolutions, :status, :integer, default: 0
  end
end
