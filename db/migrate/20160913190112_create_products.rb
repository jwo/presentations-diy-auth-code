class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_in_cents
      t.text :description

      t.timestamps
    end
  end
end
