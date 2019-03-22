class AddSharedToOscillator < ActiveRecord::Migration[5.2]
  def change
    add_column :oscillators, :shared, :boolean, default: false
  end
end
