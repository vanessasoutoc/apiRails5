class CreatePlanos < ActiveRecord::Migration[5.0]
  def change
    create_table :planos do |t|
      t.string :name, limit: 50
      t.string :description, limit: 99
      t.integer :n_adverts
      t.integer :n_auto_consultations
      t.decimal :value, precision: 8, scale: 2

      t.timestamps
    end
  end
end
