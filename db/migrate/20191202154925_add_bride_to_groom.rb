class AddBrideToGroom < ActiveRecord::Migration[6.0]
  def change
    add_reference :grooms, :bride, index: true
  end
end
