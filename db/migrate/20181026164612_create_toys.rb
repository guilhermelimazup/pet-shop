class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.references :products, foreign_key: true
      t.string :brand

      t.timestamps
    end
  end
end
