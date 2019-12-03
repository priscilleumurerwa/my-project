require 'rails_helper'
RSpec.feature "Familly registration function", type: :feature do
  background do
    User.create!(email: 'pricille@gmail.Com',password: '123456')
    Groom.create(name: 'kalisa', email: 'pricille@gmail.Com',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
  end
  scenario "Test Groom list" do
    Groom.create(name: 'html5', email: 'pricille@gmail.Com',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    Groom.all
  end
  scenario "Test Groom creation" do
    Groom.create(name: 'musa', email: 'musa@gmail.Com',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    Groom.create(name: 'mutoni', email: 'mutonipricille@gmail.Com',gender:'male',country:'rwanda',district:'kayonza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
  end
  scenario "Test Groom details" do
    @groom=Groom.create(name: 'leo', email: 'leo@gmail.Com',gender:'male',country:'rwanda',district:'nyanza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    @groom.name
    @groom.email
    @groom.gender
  end
  scenario "Test Groom updating" do
    @groom1=Groom.create(name: 'kaka', email: 'kaka@gmail.Com',gender:'male',country:'rwanda',district:'nyanza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
    @groom1.name='mucyo'
    @groom1.save
  end
  scenario "Test Groom Deletion" do
  @groom2=Groom.create(name: 'lili', email: 'lili@gmail.Com',gender:'male',country:'rwanda',district:'nyanza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
  @groom3=Groom.create(name: 'luca', email: 'luca@gmail.Com',gender:'male',country:'rwanda',district:'nyanza',sector:'nyanza',cell:'kinigi',phone:'0728457575')
  @groom2.destroy
  end
end
