class AddUserIdToOscillator < ActiveRecord::Migration[5.2]
  def change
    add_column :oscillators, :user_id, :integer
  end
end
