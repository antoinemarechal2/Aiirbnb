class AddPropositionToResolutions < ActiveRecord::Migration[4.2]
  def change
    add_column :resolutions, :proposition, :text
  end
end
