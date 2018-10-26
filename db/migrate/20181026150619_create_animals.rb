class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.references :products, foreign_key: true
      t.string :specie
      t.string :race

      t.timestamps
    end
  end
end
