class AddUrlToOscillator < ActiveRecord::Migration[5.2]
  def change
    add_column :oscillators, :url, :string
  end
end
