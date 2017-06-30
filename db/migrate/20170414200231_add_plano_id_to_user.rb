class AddPlanoIdToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :plano_id, :integer
  end
end
