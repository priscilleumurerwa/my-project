class CreateFamilies < ActiveRecord::Migration[6.0]
  def change
    create_table :families do |t|
      t.integer :category
      t.references :groom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
