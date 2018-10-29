class CreateRemedies < ActiveRecord::Migration[5.2]
  def change
    create_table :remedies do |t|
      t.boolean :controlled
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
