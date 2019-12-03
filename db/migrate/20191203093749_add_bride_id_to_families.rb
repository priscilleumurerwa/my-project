class AddBrideIdToFamilies < ActiveRecord::Migration[6.0]
  def change
    add_column :families, :bride_id, :integer
  end
end
