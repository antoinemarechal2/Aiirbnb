class AddPropositionToResolutions < ActiveRecord::Migration
  def change
    add_column :resolutions, :proposition, :text
  end
end
