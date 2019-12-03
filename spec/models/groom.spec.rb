require 'rails_helper'
RSpec.describe Groom, type: :model do
  scenario "Validation does not pass if the name is empty" do
    groom = Groom.new(name: '', email: 'musa@gmail.Com',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    expect(groom).not_to be_valid
  end
  scenario "Validation does not pass if email is empty" do
    groom = Groom.new(name: 'musa', email: '',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    expect(groom).not_to be_valid
  end
  scenario "validation does not pass if name and email are empty" do
    groom = Groom.new(name: 'keza', email: 'keza@gmail.Com',gender:'female',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    expect(groom).not_to be_valid
  end
  scenario "test if search works" do
    Groom.all.where('name LIKE ?')
  end
end
