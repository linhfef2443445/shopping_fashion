class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.double :price
      t.integer :quantity
      t.text :description
      t.references :admin, foreign_key: true

      t.timestamps
    end
  end
end
