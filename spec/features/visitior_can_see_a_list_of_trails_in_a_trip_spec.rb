require 'rails_helper'

describe 'As a visitor' do
  describe 'when I am on trips index and click on a link to trip show' do
    it 'I see a list of trails included in the trip including name, address and length' do
      winter = Trip.create!(name: "Winter", start_date: "01/02/1985", end_date: "02/05/1985")
      summer = Trip.create!(name: "Summer", start_date: "07/02/1987", end_date: "08/04/1987")
      slippery_trail = Trail.create!(length: 5, name: "slippery trail", address: "memory lane")
      summer.trails << slippery_trail
      visit trips_path

      expect(page).to have_content("Summer")
      click_on "Summer"

      expect(page).to have_content("Start date: 07/02/1987")
      expect(page).to have_content("slippery trail")
      expect(page).to have_content(5)
      expect(page).to have_content("memory lane")
    end
  end
end

  # As a visitor,
  # when I visit the trips index,
  # and I click a link to a trip show,
  # I see a list of trails included in the trip,
  # I see the name, address, and length for each trail.