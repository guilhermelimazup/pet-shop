class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :brand
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
