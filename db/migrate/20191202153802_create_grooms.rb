class CreateGrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :grooms do |t|
      t.string :name
      t.string :email
      t.date :birth_date
      t.string :gender
      t.string :country
      t.string :district
      t.string :sector
      t.string :cell
      t.string :phone

      t.timestamps
    end
  end
end
