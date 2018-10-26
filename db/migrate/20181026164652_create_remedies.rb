class CreateRemedies < ActiveRecord::Migration[5.2]
  def change
    create_table :remedies do |t|
      t.references :products, foreign_key: true
      t.boolean :controlled

      t.timestamps
    end
  end
end
